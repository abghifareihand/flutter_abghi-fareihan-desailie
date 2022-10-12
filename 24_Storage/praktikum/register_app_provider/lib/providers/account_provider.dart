import 'package:flutter/material.dart';
import 'package:register_app_provider/models/account_model.dart';
import 'package:register_app_provider/providers/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountProvider extends ChangeNotifier {
  bool _isLogin = false;
  AccountModel? _accountModel;
  late SharedPref _sharedPref;

  AccountProvider() {
    _sharedPref = SharedPref();
  }

  Future<bool> get isLogin async {
    _isLogin = await _sharedPref.isLogin();
    return _isLogin;
  }

  AccountModel? get account => _accountModel;

  Future<bool> saveAccount(AccountModel account) async {
    final result = await _sharedPref.saveAccount(account);
    return result;
  }

  Future<void> getAccount() async {
    _accountModel = await _sharedPref.getAccount();
    notifyListeners();
  }

  Future<bool> removeAccount() async {
    return await _sharedPref.removeAccount();
  }
}
