import 'package:flutter/material.dart';
import '../models/gambar.dart';
import 'package:flutter_app_16/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 8,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            final gambar = dataGambar.elementAt(index);
            return InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailScreen(gambar),
                ),
              ),
              child: GridTile(
                child: Image.network(
                  gambar.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          itemCount: dataGambar.length,
        ),
      ),
    );
  }
}
