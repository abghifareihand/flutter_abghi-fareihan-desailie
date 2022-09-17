import 'package:cupertino_app/models/chat_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [CupertinoListTile()],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(
              chat.image,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    chat.message,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff707991),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            chat.time,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Color(0xff707991),
            ),
          ),
        ],
      ),
    );
  }
}
