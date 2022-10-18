import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/screens/home/home_view_model.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeViewModel>(context, listen: false).getUsers();
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<HomeViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: ListView.builder(
        itemCount: modelView.user.length,
        itemBuilder: (context, index) {
          final user = modelView.user[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(user.avatar),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name : ${user.firstName} ${user.lastName}'),
                          Text('Email : ${user.email}'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
