import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _nameController = TextEditingController();
  final _jobController = TextEditingController();
  String response = '-';

  @override
  void dispose() {
    _nameController.dispose();
    _jobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: ListView(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                label: Text('Name'),
              ),
            ),
            TextFormField(
              controller: _jobController,
              decoration: const InputDecoration(
                label: Text('Job'),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    getAllUser();
                  },
                  child: const Text('GET'),
                ),
                ElevatedButton(
                  onPressed: () {
                    createUser();
                  },
                  child: const Text('POST'),
                ),
                ElevatedButton(
                  onPressed: () {
                    editUser();
                  },
                  child: const Text('PUT'),
                ),
                ElevatedButton(
                  onPressed: () {
                    deleteUser();
                  },
                  child: const Text('DELETE'),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Result : ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              response,
            ),
          ],
        ),
      ),
    );
  }

  void getAllUser() async {
    try {
      Response response = await Dio().get('https://reqres.in/api/users');
      setState(() {
        this.response = response.data.toString();
      });
    } catch (e) {
      rethrow;
    }
  }

  void createUser() async {
    Map<String, dynamic> data = {
      'name': _nameController.text,
      'job': _jobController.text,
    };
    try {
      Response response = await Dio().post(
        'https://reqres.in/api/users',
        data: data,
      );
      setState(() {
        this.response = response.data.toString();
      });
    } catch (e) {
      rethrow;
    }
  }

  void editUser() async {
    Map<String, dynamic> data = {
      'name': _nameController.text,
      'job': _jobController.text,
    };
    try {
      Response response = await Dio().put(
        'https://reqres.in/api/users/4',
        data: data,
      );
      setState(() {
        this.response = response.data.toString();
      });
    } catch (e) {
      rethrow;
    }
  }

  void deleteUser() async {
    try {
      Response response = await Dio().delete('https://reqres.in/api/users/4');
      setState(() {
        this.response = response.data.toString();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User Deleted'),
          ),
          // menambahkan snackbar saat delete
        );
        _nameController.clear();
        _jobController.clear();
        // menghapus data di textfield
      });
    } catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> _parseAndDecode(String response) {
    return json.decode(response);
  }
}
