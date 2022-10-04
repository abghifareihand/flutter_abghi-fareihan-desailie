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
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person_pin,
              size: 40,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contact.name,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  contact.phone,
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.delete,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
