import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String btnTitle;

  const ButtonWidget({
    super.key,
    required this.btnTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 50,
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF6C5ECF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          btnTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
