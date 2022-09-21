import 'package:flutter/material.dart';
import 'package:flutter_app_15/models/chats.dart';
import 'package:flutter_app_15/widgets/chat_widget.dart';

class TaskSatuPage extends StatelessWidget {
  const TaskSatuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView in Flutter'),
        centerTitle: true,
      ),
      body: const ListViewChat(),
    );
  }
}

class ListViewChat extends StatelessWidget {
  const ListViewChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ChatWidget(dataChats[index]),
      itemCount: dataChats.length,
    );
  }
}
