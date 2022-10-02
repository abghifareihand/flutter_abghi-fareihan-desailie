import 'package:flutter/material.dart';
import '../models/contact_model.dart';

class ContactStore with ChangeNotifier {
  final List<ContactModel> _contacts = [];
  List<ContactModel> get contacts => _contacts;

  void add(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
