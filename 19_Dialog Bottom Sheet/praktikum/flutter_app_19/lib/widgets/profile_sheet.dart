import 'package:flutter/material.dart';
import 'package:flutter_app_19/models/gallery_model.dart';

class ProfileSheet extends StatelessWidget {
  final Gallery gallery;

  const ProfileSheet(this.gallery, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Image.network(gallery.imageUrl),
    );
  }
}
