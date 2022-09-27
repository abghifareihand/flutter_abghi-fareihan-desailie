import 'package:flutter/material.dart';
import 'package:flutter_app_17/screens/form_screen.dart';
import 'package:flutter_app_17/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        '/form': (context) => const FormScreen(),
      },
    );
  }
}
