import 'package:flutter/material.dart';
import 'package:flutter_ui_testing/models/chats.dart';

class ChatWidget extends StatelessWidget {
  final Chats chats;
  const ChatWidget(this.chats, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          chats.name[0],
        ),
      ),
      title: Text(chats.name),
      subtitle: Text(chats.phone),
    );
  }
}
