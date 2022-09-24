import 'package:flutter/material.dart';
import '../models/gambar.dart';

class DetailScreen extends StatelessWidget {
  final Gambar gambar;
  const DetailScreen(this.gambar, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
          height: double.infinity,
          child: Image.network(
            gambar.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
