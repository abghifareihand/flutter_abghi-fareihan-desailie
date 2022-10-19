import 'package:flutter/material.dart';
import 'package:flutter_app_finite/screens/food/food_screen.dart';
import 'package:flutter_app_finite/screens/food/food_view_model.dart';
import 'package:provider/provider.dart';

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
          create: (context) => FoodViewModel(),
        ),
      ],
      child: const MaterialApp(
        home: FoodScreen(),
      ),
    );
  }
}
