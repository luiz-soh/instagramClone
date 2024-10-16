// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_prod.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAsVVGoILKuc09rlf-YsBS_hxWTJZUDRJU',
    appId: '1:589358023367:web:c5ac68998c2ea90d0eb4e2',
    messagingSenderId: '589358023367',
    projectId: 'instagramclone-prod',
    authDomain: 'instagramclone-prod.firebaseapp.com',
    storageBucket: 'instagramclone-prod.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQdX3E3SfgfFFMPrfau7xrmO8ONuGaaig',
    appId: '1:589358023367:android:8f9c8ded82a833fc0eb4e2',
    messagingSenderId: '589358023367',
    projectId: 'instagramclone-prod',
    storageBucket: 'instagramclone-prod.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAV1SyqQfkI40RJ8W0i6ZvvwlkwNFLUC0k',
    appId: '1:589358023367:ios:1fb1196f139d40fe0eb4e2',
    messagingSenderId: '589358023367',
    projectId: 'instagramclone-prod',
    storageBucket: 'instagramclone-prod.appspot.com',
    iosClientId: '589358023367-vvq75oajnticqjiopdim54j1071gpaog.apps.googleusercontent.com',
    iosBundleId: 'com.luizsohapps.instagramClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAV1SyqQfkI40RJ8W0i6ZvvwlkwNFLUC0k',
    appId: '1:589358023367:ios:1fb1196f139d40fe0eb4e2',
    messagingSenderId: '589358023367',
    projectId: 'instagramclone-prod',
    storageBucket: 'instagramclone-prod.appspot.com',
    iosClientId: '589358023367-vvq75oajnticqjiopdim54j1071gpaog.apps.googleusercontent.com',
    iosBundleId: 'com.luizsohapps.instagramClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAsVVGoILKuc09rlf-YsBS_hxWTJZUDRJU',
    appId: '1:589358023367:web:5cd67a2b8d7983270eb4e2',
    messagingSenderId: '589358023367',
    projectId: 'instagramclone-prod',
    authDomain: 'instagramclone-prod.firebaseapp.com',
    storageBucket: 'instagramclone-prod.appspot.com',
  );
}
