import 'package:envied/envied.dart';

part 'env_dev.g.dart';


/// (@template env)
/// Dev Environment variables
/// (@endtemplate)
@Envied(path: '.env.dev', obfuscate: true)
abstract class EnvDev {
  /// Supabase url secret
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  static String supabaseUrl = _EnvDev.supabaseUrl;

  /// Supabase Anon key
  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static String supabaseAnonKey = _EnvDev.supabaseAnonKey;

  /// PowerSync Url
  @EnviedField(varName: 'POWERSYNC_URL', obfuscate: true)
  static String powerSyncUrl = _EnvDev.powerSyncUrl;

    /// Ios Client Id
  @EnviedField(varName: 'IOS_CLIENT_ID', obfuscate: true)
  static String iosClientId = _EnvDev.iosClientId;

    /// Web Client Id
  @EnviedField(varName: 'WEB_CLIENT_ID', obfuscate: true)
  static String webClientId = _EnvDev.webClientId;
}
