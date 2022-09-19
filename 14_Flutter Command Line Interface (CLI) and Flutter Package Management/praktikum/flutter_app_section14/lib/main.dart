import 'package:flutter/material.dart';
import 'package:flutter_app_section14/home_page.dart';
import 'package:flutter_app_section14/task_1_page.dart';
import 'package:flutter_app_section14/task_2_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/task1': (context) => SatuPage(),
        '/task2': (context) => DuaPage(),
      },
    );
  }
}
