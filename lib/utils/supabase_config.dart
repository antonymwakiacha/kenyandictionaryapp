// // 
// import 'package:supabase_flutter/supabase_flutter.dart';

// class SupabaseConfig {
//   // Use --dart-define values for both local and CI/CD builds
//   static final String supabaseUrl =
//       const String.fromEnvironment('SUPABASE_URL', defaultValue: '');
//   static final String supabaseAnonKey =
//       const String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: '');

//   static Future<void> initialize() async {
//     if (supabaseUrl.isEmpty || supabaseAnonKey.isEmpty) {
//       throw Exception(
//           "Supabase credentials are missing. Use --dart-define to provide SUPABASE_URL and SUPABASE_ANON_KEY.");
//     }

//     await Supabase.initialize(
//       url: supabaseUrl,
//       anonKey: supabaseAnonKey,
//     );
//   }

//   static SupabaseClient get client => Supabase.instance.client;
// }

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


class SupabaseConfig {
  //static const String supabaseUrl = 'https://otqamrtrquhbymzodxki.supabase.co';
 // static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im90cWFtcnRycXVoYnltem9keGtpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTcyNDk1MDUsImV4cCI6MjA3MjgyNTUwNX0.heRUQWeZg28HPhPbHKT2VajHHRSSMyGm1sku4qN4HyA';
  
  static final String supabaseUrl = dotenv.env['SUPABASE_URL']!;
  static final String supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY']!;

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  }
  
  static SupabaseClient get client => Supabase.instance.client;
}