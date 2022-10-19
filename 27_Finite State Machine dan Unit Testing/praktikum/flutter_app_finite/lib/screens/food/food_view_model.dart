import 'package:flutter/material.dart';
import 'package:flutter_app_finite/models/api/food_api.dart';
import 'package:flutter_app_finite/models/food.dart';

enum FoodViewState {
  none,
  loading,
  error,
}

class FoodViewModel with ChangeNotifier {
  final FoodAPI foodAPI = FoodAPI();

  FoodViewState _state = FoodViewState.none;
  FoodViewState get state => _state;

  List<Food> _foods = [];
  List<Food> get foods => _foods;

  changeState(FoodViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllFoods() async {
    changeState(FoodViewState.loading);

    try {
      final response = await foodAPI.getAllFoods();
      _foods = response;
      notifyListeners();
      changeState(FoodViewState.none);
    } catch (e) {
      changeState(FoodViewState.error);
    }
  }
}
