import 'package:flutter/material.dart';
import 'package:flutter_ui_testing/models/chats.dart';
import 'package:flutter_ui_testing/widgets/chat_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ChatWidget(dataChats[index]),
        itemCount: dataChats.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
