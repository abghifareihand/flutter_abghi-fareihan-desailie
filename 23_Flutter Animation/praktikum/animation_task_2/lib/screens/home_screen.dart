import 'package:flutter/material.dart';
import 'package:flutter_app_21/screens/create_screen.dart';
import 'package:flutter_app_21/providers/contact_provider.dart';
import 'package:flutter_app_21/widgets/empty_contact.dart';
import 'package:flutter_app_21/widgets/list_contact.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: buildContactScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const CreateScreen();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final tween = Tween(
                  begin: const Offset(1, 1),
                  end: Offset.zero,
                );
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildContactScreen() {
    return Consumer<ContactProvider>(
      builder: (context, contact, child) {
        if (contact.contacts.isNotEmpty) {
          return ListContact(
            contact: contact,
          );
        } else {
          return const EmptyContact();
        }
      },
    );
  }
}
