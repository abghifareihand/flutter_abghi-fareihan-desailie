import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_2/user_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _nameController = TextEditingController();
  final _jobController = TextEditingController();
  String response = '-';
  List<UserModel> listUsers = [];
  List<Map<String, dynamic>> _listMapUsers = [];

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () async {
                final res = await Dio().get('https://reqres.in/api/users');
                final listMap = List<Map<String, dynamic>>.from(
                  res.data['data'].map(
                    (user) => {
                      'id': user['id'],
                      'email': user['email'].toString(),
                      'firstName': user['first_name'].toString(),
                      'lastName': user['last_name'].toString(),
                      'avatar': user['avatar'].toString(),
                    },
                  ),
                );

                setState(() {
                  response = listMap.runtimeType.toString();
                  listUsers = List<UserModel>.from(
                    res.data['data']
                        .map((user) => UserModel.fromJson(user))
                        .toList(),
                  );
                  _listMapUsers = listMap;
                });
              },
              child: const Text('GET'),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final user = _listMapUsers[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Image.network(user['avatar']),
                    ),
                    title: Text(
                        '${user['firstName'].toString()} ${user['lastName'].toString()}'),
                    subtitle: Text(user['email']),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: _listMapUsers.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
