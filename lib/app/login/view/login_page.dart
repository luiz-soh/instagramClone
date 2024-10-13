import 'package:env/env.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared/shared.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoogleSignInButton(),
              LogOutButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  Future<void> _googleSignIn() async {
    final appFlavor = AppFlavor.development();
    final iosClientId = appFlavor.getEnv(Env.iosClientId);
    final webClientId = appFlavor.getEnv(Env.webClientId);
    final googleSignIn = GoogleSignIn(
      clientId: iosClientId,
      serverClientId: webClientId,
    );

    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser?.authentication;
    if (googleAuth == null) {
      throw Exception('Google sign in was canceled');
    }
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;
    if (accessToken == null || idToken == null) {
      throw Exception('No token found');
    }
    await Supabase.instance.client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () async {
        try {
          await _googleSignIn();
        } catch (error, stackTrace) {
          logE(
            'Failed to LogIn with google',
            error: error,
            stackTrace: stackTrace,
          );
        }
      },
      icon: const Icon(Icons.auto_awesome),
      label: Text(
        'Google',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  void _logOut() => Supabase.instance.client.auth.signOut();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final session = snapshot.data!.session;
          if (session == null) return const SizedBox.shrink();
          return ElevatedButton.icon(
            onPressed: _logOut,
            icon: const Icon(Icons.logout),
            label: Text(
              'Log Out',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.apply(color: Colors.red),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
