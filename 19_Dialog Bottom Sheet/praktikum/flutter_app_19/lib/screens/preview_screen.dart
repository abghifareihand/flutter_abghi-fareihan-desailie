import 'package:flutter/material.dart';
import 'package:flutter_app_19/models/gallery_model.dart';
import 'package:flutter_app_19/screens/gallery_screen.dart';

class PreviewScreen extends StatelessWidget {
  final Gallery gallery;
  const PreviewScreen(this.gallery, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
          height: double.infinity,
          child: Image.network(
            gallery.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => GalleryScreen(),
            ),
          );
        },
      ),
    );
  }
}
