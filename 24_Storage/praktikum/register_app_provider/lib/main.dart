import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:register_app_provider/providers/account_provider.dart';
import 'package:register_app_provider/screens/home_screen.dart';
import 'package:register_app_provider/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AccountProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomeScreen(),
          '/register': (context) => const RegisterScreen(),
        },
      ),
    );
  }
}
