import 'package:flutter/material.dart';
import 'package:flutter_app_19/models/gallery_model.dart';
import 'package:flutter_app_19/screens/preview_screen.dart';
import 'package:flutter_app_19/widgets/profile_sheet.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gallery Screen',
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
            final galeri = dataGallery.elementAt(index);
            return InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (context) => ProfileSheet(galeri),
                );
              },
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Apakah mau membuka gambar fullscreen?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PreviewScreen(galeri),
                            ),
                          );
                        },
                        child: const Text('YA'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('TIDAK'),
                      ),
                    ],
                  ),
                );
              },
              child: Image.network(
                galeri.imageUrl,
                fit: BoxFit.cover,
              ),
            );
          },
          itemCount: dataGallery.length,
        ),
      ),
    );
  }
}
