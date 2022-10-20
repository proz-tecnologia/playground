// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class LoginStates {}

class LoginStateEmpty extends LoginStates {}

class LoginStateSucess extends LoginStates {}

class LoginStateError extends LoginStates {
  final String message;
  LoginStateError({
    required this.message,
  });
}

class LoginStateLoading extends LoginStates {}
