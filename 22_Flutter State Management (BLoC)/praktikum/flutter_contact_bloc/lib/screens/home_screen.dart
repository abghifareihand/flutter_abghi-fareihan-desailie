import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contact_bloc/bloc/contact_bloc.dart';
import 'package:flutter_contact_bloc/screens/create_screen.dart';
import 'package:flutter_contact_bloc/widgets/contact_empty.dart';
import 'package:flutter_contact_bloc/widgets/contact_failed.dart';
import 'package:flutter_contact_bloc/widgets/contact_loading.dart';

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
        title: Text('Home'),
      ),
      body: buildContactScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CreateScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildContactScreen() {
    final blocProvider = BlocProvider.of<ContactBloc>(context);
    return BlocBuilder<ContactBloc, ContactState>(
      bloc: blocProvider,
      builder: (context, state) {
        if (state is Loading) return const ContactLoading();
        if (state is Failed) return const ContactFailed();
        if (state.contacts.isEmpty) return const ContactEmpty();
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            final contact = state.contacts[index];
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
                onPressed: () {
                  context.read<ContactBloc>().add(
                        RemoveContact(contact),
                      );

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${contact.name} deleted.'),
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: state.contacts.length,
        );
      },
    );
  }
}
