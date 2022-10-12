import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_app_bloc/bloc/account_bloc.dart';
import 'package:register_app_bloc/screens/register_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
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
            BlocBuilder<AccountBloc, AccountState>(
              builder: (context, state) {
                if (state is AccountSuccess) {
                  return Text(
                    'Hello, ${state.account?.name}',
                    style: const TextStyle(fontSize: 24),
                  );
                }

                return const SizedBox();
              },
            ),
            BlocBuilder<AccountBloc, AccountState>(
              builder: (context, state) {
                if (state is AccountSuccess) {
                  return Text(
                    '${state.account?.email}',
                    style: const TextStyle(fontSize: 24),
                  );
                }

                return const SizedBox();
              },
            ),
            ElevatedButton.icon(
              onPressed: () async {
                final result =
                    await context.read<AccountBloc>().removeAccount();

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
