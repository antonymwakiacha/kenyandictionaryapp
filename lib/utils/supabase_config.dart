// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';


// class SupabaseConfig {
//   //static const String supabaseUrl = 'https://otqamrtrquhbymzodxki.supabase.co';
//  // static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im90cWFtcnRycXVoYnltem9keGtpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTcyNDk1MDUsImV4cCI6MjA3MjgyNTUwNX0.heRUQWeZg28HPhPbHKT2VajHHRSSMyGm1sku4qN4HyA';
  
//   static final String supabaseUrl = dotenv.env['SUPABASE_URL']!;
//   static final String supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY']!;



//   static Future<void> initialize() async {
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
  static late final String supabaseUrl;
  static late final String supabaseAnonKey;

  static Future<void> initialize() async {
    // Try to load from .env (works locally)
    await dotenv.load(fileName: ".env").catchError((_) {
      print("No .env file found, using dart-define values");
    });

    // Fallback: load from environment variables (GitHub Actions)
    supabaseUrl = dotenv.env['SUPABASE_URL'] ?? const String.fromEnvironment('SUPABASE_URL');
    supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY'] ?? const String.fromEnvironment('SUPABASE_ANON_KEY');

    if (supabaseUrl.isEmpty || supabaseAnonKey.isEmpty) {
      throw Exception("Supabase credentials are missing. Check your .env file or dart-define variables.");
    }

    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  }

  static SupabaseClient get client => Supabase.instance.client;
}
