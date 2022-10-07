import 'package:flutter/material.dart';
import 'package:flutter_app_21/models/contact_model.dart';

class CardContact extends StatelessWidget {
  final ContactModel contact;
  final Function() onPressed;
  const CardContact({
    super.key,
    required this.contact,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(contact.name[0]),
      ),
      title: Text(contact.name),
      subtitle: Text(contact.phone),
      tileColor: Colors.blue.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.delete,
          color: Colors.grey,
        ),
      ),
    );
  }
}
