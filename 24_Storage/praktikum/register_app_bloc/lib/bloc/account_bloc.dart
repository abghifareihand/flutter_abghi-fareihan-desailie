import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:register_app_bloc/models/account_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  late SharedPref _sharedPref;
  AccountBloc() : super(AccountInitial()) {
    _sharedPref = SharedPref();
  }

  void getAccount() async {
    var account = await _sharedPref.getAccount();
    var isLogin = await _sharedPref.isLogin();
    emit(AccountSuccess(account: account, isLogin: isLogin));
  }

  Future<bool> removeAccount() async {
    var status = await _sharedPref.removeAccount();
    getAccount();
    return status;
  }

  Future<bool> createAccount(AccountModel account) async {
    var status = await _sharedPref.saveAccount(account);
    getAccount();
    return status;
  }
}
