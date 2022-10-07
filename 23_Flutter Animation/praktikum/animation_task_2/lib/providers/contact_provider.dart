import 'package:flutter/material.dart';
import 'package:flutter_app_21/models/contact_model.dart';

class ContactProvider with ChangeNotifier {
  final _contacts = <ContactModel>[];
  List<ContactModel> get contacts => _contacts;

  void addContact(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}
