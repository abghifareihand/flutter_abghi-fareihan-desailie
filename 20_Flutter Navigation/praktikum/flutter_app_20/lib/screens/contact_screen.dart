import 'package:flutter/material.dart';
import 'package:flutter_app_20/models/contact_model.dart';
import 'package:flutter_app_20/screens/create_screen.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final contact = dataContact[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Center(
                child: Text(
                  dataContact[index].name[0],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: Text(contact.name),
            subtitle: Text(contact.phone),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: dataContact.length,
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'No pushNamed',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateScreen(), // tanpa pushNamed
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'pushNamed',
            onTap: () {
              Navigator.pushNamed(context, '/create'); // menggunakan pushNamed
            },
          ),
        ],
      ),
    );
  }
}
