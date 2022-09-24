import 'package:flutter/material.dart';
import 'package:flutter_weekly_1/widgets/form_widget.dart';
import 'package:flutter_weekly_1/widgets/header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1D2B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1D2B),
        title: Row(
          children: [
            Image.asset(
              'images/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Goys Academy',
            ),
          ],
        ),
      ),
      body: ListView(
        children: const [
          HeaderWidget(),
          FormWidget(),
        ],
      ),
    );
  }
}
