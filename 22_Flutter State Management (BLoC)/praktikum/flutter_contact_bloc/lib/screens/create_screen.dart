import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contact_bloc/bloc/contact_bloc.dart';
import 'package:flutter_contact_bloc/models/contact_model.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Contact'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  label: const Text('Name'),
                  prefixIcon: const Icon(Icons.person),
                ),
                validator: (value) {
                  // jika field tidak di isi (empty) akan ada tulisan
                  if (value!.isEmpty) {
                    return 'Input your name !';
                  }
                  if (value.length < 3) {
                    return 'Name min 3 character';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  label: const Text('Phone Number'),
                  prefixIcon: const Icon(Icons.phone_android),
                ),
                validator: (value) {
                  // jika field tidak di isi (empty) akan ada tulisan
                  if (value!.isEmpty) {
                    return 'Input your phone number !';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              BlocBuilder<ContactBloc, ContactState>(
                builder: (context, state) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      final isValid = formKey.currentState!.validate();
                      if (!isValid) return;

                      final contact = ContactModel(
                        name: nameController.text,
                        phone: phoneController.text,
                      );

                      context.read<ContactBloc>().add(
                            CreateContact(contact),
                          );

                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${nameController.text} created.'),
                        ),
                      );
                    },
                    child: const Text('CREATE CONTACT'),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
