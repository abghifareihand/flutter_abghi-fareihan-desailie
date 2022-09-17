import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff55879F), // merubah warna bg
        title: const Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Monika Goldsmith'),
            subtitle: Text('Hey!'),
            leading: CircleAvatar(
              child: Image.asset('images/avatar_2.png'),
            ),
            trailing: Text('5:54 PM'),
          ),
          ListTile(
            title: Text('Agus Supriono'),
            subtitle: Text('What?!'),
            leading: CircleAvatar(
              child: Image.asset('images/avatar_3.png'),
            ),
            trailing: Text('5:52 PM'),
          ),
          ListTile(
            title: Text('Paul Dogger'),
            subtitle: Text('You have my financial support'),
            leading: CircleAvatar(
              child: Image.asset('images/avatar_6.png'),
            ),
            trailing: Text('10:50 PM'),
          ),
          ListTile(
            title: Text('Ben Rodriguez'),
            subtitle: Text('Update?'),
            leading: CircleAvatar(
              child: Image.asset('images/avatar_7.png'),
            ),
            trailing: Text('Tue'),
          ),
          ListTile(
            title: Text('Bernika Sukaesih'),
            subtitle: Text('Hallo...'),
            leading: CircleAvatar(
              child: Image.asset('images/avatar_8.png'),
            ),
            trailing: Text('Mon'),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
        backgroundColor: Color(0xff55879F),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text(
              'Agoy Koswara',
            ),
            accountEmail: Text(
              '087777711122',
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/drawer_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'images/profile.png',
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('New Group'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('New Secret Chat'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('New Channel'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 16,
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text('Contacts'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: const Text('Invite Friends'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.question_mark),
            title: const Text('Telegram FAQ'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
