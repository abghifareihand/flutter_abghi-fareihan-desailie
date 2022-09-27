import 'package:flutter/material.dart';
import 'package:flutter_app_17/models/contacts.dart';

class ContactItem extends StatelessWidget {
  final Contacts contacts;
  const ContactItem(this.contacts, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Center(
          child: Text(contacts.avatar),
        ),
      ),
      title: Text(contacts.name),
      subtitle: Text(contacts.phone),
    );
  }
}
