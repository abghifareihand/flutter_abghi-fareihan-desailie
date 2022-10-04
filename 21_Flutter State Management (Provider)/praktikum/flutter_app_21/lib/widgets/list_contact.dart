import 'package:flutter/material.dart';
import 'package:flutter_app_21/models/contact_model.dart';
import 'package:flutter_app_21/stores/contact_store.dart';
import 'package:flutter_app_21/widgets/card_contact.dart';

class ListContact extends StatelessWidget {
  final ContactStore contact;
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

  // Widget buildContactItem(BuildContext context, ContactModel item, int index) {
  //   return Container(
  //     height: 70,
  //     decoration: BoxDecoration(
  //       color: Colors.green[100],
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: Row(
  //       children: [
  //         Container(
  //           margin: const EdgeInsets.only(
  //             left: 16,
  //             right: 16,
  //           ),
  //           decoration: const BoxDecoration(
  //             shape: BoxShape.circle,
  //           ),
  //           child: const Icon(
  //             Icons.person_pin,
  //             size: 40,
  //             color: Colors.grey,
  //           ),
  //         ),
  //         Expanded(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 item.name,
  //                 style: const TextStyle(
  //                     fontSize: 14, fontWeight: FontWeight.w600),
  //               ),
  //               Text(
  //                 item.phone,
  //                 style: TextStyle(
  //                     fontSize: 14, color: Colors.black.withOpacity(0.6)),
  //               ),
  //             ],
  //           ),
  //         ),
  //         IconButton(
  //             onPressed: () {
  //               contact.deleteContact(index);
  //               ScaffoldMessenger.of(context).showSnackBar(
  //                 SnackBar(
  //                   content: Text('${item.name} deleted.'),
  //                 ),
  //               );
  //             },
  //             icon: const Icon(
  //               Icons.delete,
  //               color: Colors.grey,
  //             ))
  //       ],
  //     ),
  //   );
  // }
}
