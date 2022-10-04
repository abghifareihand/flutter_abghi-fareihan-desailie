import 'package:flutter/material.dart';
import 'package:flutter_app_21/screens/create_screen.dart';
import 'package:flutter_app_21/stores/contact_store.dart';
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
            MaterialPageRoute(
              builder: (context) => const CreateScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildContactScreen() {
    return Consumer<ContactStore>(
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
