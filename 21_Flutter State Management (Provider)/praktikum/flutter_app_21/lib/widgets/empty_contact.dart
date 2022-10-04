import 'package:flutter/material.dart';

class EmptyContact extends StatelessWidget {
  const EmptyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.group),
            Text('Your contact is empty'),
          ],
        ),
      ),
    );
  }
}
