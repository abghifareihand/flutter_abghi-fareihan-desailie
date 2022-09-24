import 'package:flutter/material.dart';
import 'package:flutter_weekly_1/widgets/button_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Drawer(
        backgroundColor: const Color(0xff1F1D2B),
        child: Column(
          children: const [
            ButtonWidget(
              btnTitle: 'Contact Us',
            ),
            ButtonWidget(
              btnTitle: 'About Us',
            ),
            ButtonWidget(
              btnTitle: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
