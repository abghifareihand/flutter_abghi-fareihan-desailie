import 'package:flutter/material.dart';
import 'package:flutter_app_15/pages/home_page.dart';
import 'package:flutter_app_15/pages/task_1_page.dart';
import 'package:flutter_app_15/pages/task_2_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/task1': (context) => const TaskSatuPage(),
        '/task2': (context) => const TaskDuaPage(),
      },
    );
  }
}
