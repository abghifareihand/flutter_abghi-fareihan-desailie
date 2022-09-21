import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData gridIcon;
  const IconWidget(this.gridIcon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      margin: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Icon(
        gridIcon,
        color: Colors.white,
      ),
    );
  }
}
