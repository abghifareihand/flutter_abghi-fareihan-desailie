import 'package:dio/dio.dart';
import 'package:flutter_app_finite/models/food.dart';

class FoodAPI {
  Future<List<Food>> getAllFoods() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

    List<Food> foods = (response.data as List)
        .map(
          (food) => Food(
            id: food['id'],
            name: food['name'],
          ),
        )
        .toList();

    return foods;
  }
}
