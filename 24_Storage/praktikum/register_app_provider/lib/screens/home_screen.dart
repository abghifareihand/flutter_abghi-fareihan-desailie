import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:register_app_provider/providers/account_provider.dart';
import 'package:register_app_provider/screens/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _initial() async {
    context.read<AccountProvider>().getAccount();
  }

  @override
  void initState() {
    super.initState();
    _initial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<AccountProvider>(
              builder: (context, value, child) {
                return Text(
                  'Hello, ${value.account?.name}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                );
              },
            ),
            Consumer<AccountProvider>(
              builder: (context, value, child) {
                return Text(
                  '${value.account?.email}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                );
              },
            ),
            ElevatedButton.icon(
              onPressed: () async {
                final result =
                    await context.read<AccountProvider>().removeAccount();

                if (mounted) {}

                if (result) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                }
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
