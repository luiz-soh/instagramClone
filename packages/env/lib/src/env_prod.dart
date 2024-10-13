import 'package:envied/envied.dart';

part 'env_prod.g.dart';


/// (@template env)
/// Prod Environment variables
/// (@endtemplate)
@Envied(path: '.env.prod', obfuscate: true)
abstract class EnvProd {
  /// Supabase url secret
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  static String supabaseUrl = _EnvProd.supabaseUrl;

  /// Supabase Anon key
  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static String supabaseAnonKey = _EnvProd.supabaseAnonKey;

  /// PowerSync Url
  @EnviedField(varName: 'POWERSYNC_URL', obfuscate: true)
  static String powerSyncUrl = _EnvProd.powerSyncUrl;
}
