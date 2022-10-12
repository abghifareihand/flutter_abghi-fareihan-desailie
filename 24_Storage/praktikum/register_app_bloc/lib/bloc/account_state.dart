part of 'account_bloc.dart';

abstract class AccountState extends Equatable {
  const AccountState();

  @override
  List<Object?> get props => List.empty();
}

class AccountInitial extends AccountState {}

class AccountLoading extends AccountState {}

class AccountSuccess extends AccountState {
  final AccountModel? account;
  final bool? statusAction;
  final bool? isLogin;

  AccountSuccess({
    this.account,
    this.statusAction,
    this.isLogin,
  });

  @override
  List<Object?> get props => [account, statusAction, isLogin];
}
