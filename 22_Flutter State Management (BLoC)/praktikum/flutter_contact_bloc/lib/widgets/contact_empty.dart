import 'package:flutter/material.dart';

class ContactEmpty extends StatelessWidget {
  const ContactEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.group,
            color: Colors.blue,
          ),
          Text(
            'Your contact is empty',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
