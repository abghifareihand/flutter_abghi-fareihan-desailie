# Readme Flutter Shop Cart BLoC

Menambahkan fungsi delete pada cart bloc untuk menghapus item

```dart
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartInitial([])) {
    on<AddProduct>((event, emit) {
      var existingCart = [...state.items];
      existingCart.add(event.product);
      emit(CartInitial(existingCart));
    });
    on<DeleteProduct>((event, emit) {
      var existingCart = [...state.items];
      existingCart.remove(event.product);
      emit(CartInitial(existingCart));
    });
  }
}
```

<br>
<br>

Lalu pada bagian Cart Page, pada icon delete akan memiliki fungsi untuk menghapus list

```dart
IconButton(
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
```
