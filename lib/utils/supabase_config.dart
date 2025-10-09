// 
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  // Use --dart-define values for both local and CI/CD builds
  static final String supabaseUrl =
      const String.fromEnvironment('SUPABASE_URL', defaultValue: '');
  static final String supabaseAnonKey =
      const String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: '');

  static Future<void> initialize() async {
    if (supabaseUrl.isEmpty || supabaseAnonKey.isEmpty) {
      throw Exception(
          "Supabase credentials are missing. Use --dart-define to provide SUPABASE_URL and SUPABASE_ANON_KEY.");
    }

    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  }

  static SupabaseClient get client => Supabase.instance.client;
}
