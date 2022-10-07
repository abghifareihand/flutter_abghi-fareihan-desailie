import 'package:flutter/material.dart';
import 'package:flutter_app_21/models/contact_model.dart';
import 'package:flutter_app_21/providers/contact_provider.dart';
import 'package:flutter_app_21/widgets/card_contact.dart';

class ListContact extends StatelessWidget {
  final ContactProvider contact;
  const ListContact({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    final contactItems = contact.contacts;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: contactItems.length,
        itemBuilder: (context, index) {
          ContactModel item = contactItems[index];
          return CardContact(
            contact: item,
            onPressed: () {
              contact.deleteContact(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${item.name} deleted.'),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
      ),
    );
  }
}
