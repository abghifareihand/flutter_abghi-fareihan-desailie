import 'package:cupertino_app/pages/call_page.dart';
import 'package:cupertino_app/pages/chat_page.dart';
import 'package:cupertino_app/pages/contact_page.dart';
import 'package:cupertino_app/pages/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<Widget> pages = [
    ContactPage(),
    CallPage(),
    ChatPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Padding(
            padding: EdgeInsets.only(
              top: 12,
            ),
            child: Text(
              'Edit',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff1A9CFF),
              ),
            )),
        middle: Text('Chats'),
        trailing: Icon(CupertinoIcons.arrow_down_right_square),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_alt_circle),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Settings',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return pages[index];
        },
      ),
    );
  }
}
