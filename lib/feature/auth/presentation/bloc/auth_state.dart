class AuthState {}

class AuthInitial extends AuthState {}


// ------------- Regester States --------------

class RegisterLoadingState extends AuthState {}

class RegisterSuccesState extends AuthState {}

class RegisterFailerState extends AuthState {
  final String error;
  RegisterFailerState({required this.error});
}



// -------------- Login States ---------------

class LoginLoadingState extends AuthState {}

class LoginSuccesState extends AuthState {}

class LoginFailerState extends AuthState { 
  final String error;
  LoginFailerState({required this.error});
}