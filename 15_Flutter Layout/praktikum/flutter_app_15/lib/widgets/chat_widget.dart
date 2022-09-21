import 'package:flutter/material.dart';
import 'package:flutter_app_15/models/chats.dart';

class ChatWidget extends StatelessWidget {
  final Chats listChat;
  const ChatWidget(this.listChat, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color(0xff66A958),
        child: Text(
          listChat.avatarUrl,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      title: Text(listChat.name),
      subtitle: Text(listChat.phone),
    );
  }
}
