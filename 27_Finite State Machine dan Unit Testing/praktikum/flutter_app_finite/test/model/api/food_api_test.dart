import 'package:flutter_app_finite/models/api/food_api.dart';
import 'package:flutter_app_finite/models/food.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'food_api_test.mocks.dart';

@GenerateMocks([FoodAPI])
void main() {
  group('Food API test', () {
    FoodAPI foodAPI = MockFoodAPI();
    test('get all foods returns data', () async {
      when(foodAPI.getAllFoods()).thenAnswer(
        (_) async => <Food>[
          Food(id: 1, name: 'a'),
        ],
      );
      var food = await FoodAPI().getAllFoods();
      expect(food.isNotEmpty, true);
    });
  });
}
