import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class SatuPage extends StatelessWidget {
  const SatuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              padding: EdgeInsets.all(4),
              backgroundColor: Colors.deepPurple,
              label: Text(
                'BADGE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              badgeColor: Colors.deepPurple,
              borderRadius: BorderRadius.circular(30),
              badgeContent: Text(
                'BADGE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
