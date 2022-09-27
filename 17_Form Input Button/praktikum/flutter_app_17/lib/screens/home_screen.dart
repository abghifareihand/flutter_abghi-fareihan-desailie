import 'package:flutter/material.dart';
import 'package:flutter_app_17/models/contacts.dart';
import 'package:flutter_app_17/widgets/contact_item.dart';

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
        title: const Text('Contacts'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final contact = dataContact.elementAt(index);
          return ContactItem(contact);
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: dataContact.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/form');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
