import 'package:flutter/material.dart';
import 'package:flutter_app_20/screens/contact_screen.dart';
import 'package:flutter_app_20/screens/create_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactScreen(),
      routes: {
        '/create': (context) =>
            CreateScreen(), // mendaftarkan router (untuk pushNamed)
      },
    );
  }
}
