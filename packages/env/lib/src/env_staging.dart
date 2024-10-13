import 'package:envied/envied.dart';

part 'env_staging.g.dart';


/// (@template env)
/// Prod Environment variables
/// (@endtemplate)
@Envied(path: '.env.prod', obfuscate: true)
abstract class EnvStaging {
  /// Supabase url secret
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  static String supabaseUrl = _EnvStaging.supabaseUrl;

  /// Supabase Anon key
  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static String supabaseAnonKey = _EnvStaging.supabaseAnonKey;

  /// PowerSync Url
  @EnviedField(varName: 'POWERSYNC_URL', obfuscate: true)
  static String powerSyncUrl = _EnvStaging.powerSyncUrl;


    /// Ios Client Id
  @EnviedField(varName: 'IOS_CLIENT_ID', obfuscate: true)
  static String iosClientId = _EnvStaging.iosClientId;

    /// Web Client Id
  @EnviedField(varName: 'WEB_CLIENT_ID', obfuscate: true)
  static String webClientId = _EnvStaging.webClientId;
}
