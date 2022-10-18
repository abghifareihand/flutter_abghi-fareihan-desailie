import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/models/user_model.dart';
import 'package:flutter_app_mvvm/screens/home/home_view_model.dart';
import 'package:flutter_app_mvvm/screens/user/user_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String resultDio = '';
  List<UserModel> user = [];

  final _nameController = TextEditingController();
  final _jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<HomeViewModel>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.groups_rounded),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const UserScreen(),
            ),
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
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
                  onPressed: () async {
                    Provider.of<HomeViewModel>(context, listen: false)
                        .getAllUsers();
                  },
                  child: const Text('GET'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    Provider.of<HomeViewModel>(context, listen: false)
                        .createUser(
                      _nameController.text,
                      _jobController.text,
                    );
                  },
                  child: const Text('POST'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    Provider.of<HomeViewModel>(context, listen: false)
                        .updateUser(
                      _nameController.text,
                      _jobController.text,
                    );
                  },
                  child: const Text('PUT'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    Provider.of<HomeViewModel>(context, listen: false)
                        .deleteUser();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('User Deleted'),
                      ),
                      // menambahkan snackbar saat delete
                    );

                    _nameController.clear();
                    _jobController.clear();
                  },
                  child: const Text('DELETE'),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Result',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              modelView.result,
            ),
          ],
        ),
      ),
    );
  }
}
