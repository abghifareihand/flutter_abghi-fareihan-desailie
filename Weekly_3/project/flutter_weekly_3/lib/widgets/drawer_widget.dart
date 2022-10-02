import 'package:flutter/material.dart';
import 'package:flutter_weekly_1/screens/contact_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Drawer(
        backgroundColor: const Color(0xff1F1D2B),
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/logo_utama.png',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.group),
              iconColor: const Color(0xFF7067DA),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactScreen(),
                  ),
                );
              },
              title: const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_right),
                color: const Color(0xFF7067DA),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              iconColor: const Color(0xFF7067DA),
              onTap: () {},
              title: const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_right),
                color: const Color(0xFF7067DA),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              iconColor: const Color(0xFF7067DA),
              onTap: () {},
              title: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_right),
                color: const Color(0xFF7067DA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
