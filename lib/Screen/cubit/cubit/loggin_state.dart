part of 'loggin_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

// ignore: must_be_immutable, empty_constructor_bodies
class LoginFailure extends LoginState {
  String errMessage;
  LoginFailure({required this.errMessage});
}
