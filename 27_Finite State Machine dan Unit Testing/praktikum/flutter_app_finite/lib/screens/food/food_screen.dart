import 'package:flutter/material.dart';
import 'package:flutter_app_finite/screens/food/food_view_model.dart';
import 'package:provider/provider.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<FoodViewModel>(context, listen: false);
      await viewModel.getAllFoods();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<FoodViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Makanan'),
      ),
      body: body(viewModel),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget listView(FoodViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.foods.length,
      itemBuilder: (context, index) {
        final food = viewModel.foods[index];

        return Card(
          child: ListTile(
            title: Text(
              food.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'ID : ${food.id}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget body(FoodViewModel viewModel) {
    final isLoading = viewModel.state == FoodViewState.loading;
    final isError = viewModel.state == FoodViewState.error;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (isError) {
      return const Center(
        child: Text('Gagal mengambil data'),
      );
    }

    return listView(viewModel);
  }
}
