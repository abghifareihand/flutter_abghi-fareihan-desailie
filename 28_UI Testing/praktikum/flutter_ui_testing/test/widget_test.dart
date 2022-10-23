import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_testing/pages/home_page.dart';

Widget testHomePage() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  );
}

void main() {
  group('Home Page Widget Test', () {
    testWidgets('Terdapat Judul AppBar', (WidgetTester tester) async {
      await tester.pumpWidget(
        testHomePage(),
      );
      expect(find.text('List Contact'), findsOneWidget);
    });
    testWidgets('Terdapat Body', (WidgetTester tester) async {
      await tester.pumpWidget(
        testHomePage(),
      );
      expect(find.byType(ListView), findsOneWidget);
    });
    testWidgets('Terdapat Icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        testHomePage(),
      );
      expect(find.byIcon(Icons.add), findsOneWidget);
    });
    testWidgets('Tidak Terdapat Image', (WidgetTester tester) async {
      await tester.pumpWidget(
        testHomePage(),
      );
      expect(find.byType(Image), findsNothing);
    });
  });
}
