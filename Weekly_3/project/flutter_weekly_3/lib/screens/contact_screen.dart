import 'package:flutter/material.dart';
import 'package:flutter_weekly_1/stores/contact_store.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contactStore = Provider.of<ContactStore>(context);
    return Scaffold(
      backgroundColor: const Color(0xFF1F1D2B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1D2B),
        title: const Text('Data User'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final contact = contactStore.contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color(0xFF6C5ECF),
              child: Center(
                child: Text(
                  contactStore.contacts[index].name[0],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: Text(
              '${contact.name}',
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${contact.email}',
                  style: const TextStyle(color: Colors.cyan),
                ),
                Text(
                  '${contact.message}',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
        itemCount: contactStore.contacts.length,
      ),
    );
  }
}
