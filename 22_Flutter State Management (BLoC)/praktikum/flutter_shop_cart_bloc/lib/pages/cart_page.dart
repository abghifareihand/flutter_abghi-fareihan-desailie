import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop_cart_bloc/bloc/cart_bloc.dart';
import 'package:intl/intl.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final currency = NumberFormat("#,##0.00", "id_ID");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      final item = state.items[index];
                      return ListTile(
                        title: Text(state.items[index].name),
                        subtitle: Text(
                          'Rp ${currency.format(state.items[index].price)}',
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            context.read<CartBloc>().add(
                                  DeleteProduct(item),
                                );
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${item.name} deleted.'),
                              ),
                            );
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: state.items.length,
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple,
              ),
              child: const Text('Buy'),
            )
          ],
        ),
      ),
    );
  }
}
