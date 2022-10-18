import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/models/api/user_api.dart';
import 'package:flutter_app_mvvm/models/user_model.dart';

class HomeViewModel with ChangeNotifier {
  List<UserModel> _user = [];
  String _result = '';

  List<UserModel> get user => _user;
  String get result => _result;

  getAllUsers() async {
    final response = await UserAPI().fetchUser();
    _result = response.toString();
    notifyListeners();
  }

  createUser(String name, String job) async {
    final response = await UserAPI().createUser(name: name, job: job);
    _result = response.toString();
    notifyListeners();
  }

  updateUser(String name, String job) async {
    final response = await UserAPI().createUser(name: name, job: job);
    _result = response.toString();
    notifyListeners();
  }

  deleteUser() async {
    final response = await UserAPI().deleteUser();
    _result = response.toString();
    notifyListeners();
  }

  getUsers() async {
    final response = await UserAPI().fetchData();
    _user = response;
    notifyListeners();
  }
}
