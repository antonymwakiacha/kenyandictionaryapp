import 'package:flutter/material.dart';
import 'package:kenyandictionaryapp/screens/dictionary.dart';
import 'package:kenyandictionaryapp/screens/landing_screen.dart';
import 'package:kenyandictionaryapp/screens/home_screen.dart';
import 'package:kenyandictionaryapp/screens/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_screen': (context) => const HomeScreen(),
        '/dictionary': (context) => const DictionaryScreen(),
      },
      home: LandingPage(),
      // home: ListViewTest(),
    );
  }
}
