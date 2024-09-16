class AuthState {}

class AuthInitial extends AuthState {}

//      --Regester--
class RegisterLoadingState extends AuthState {}

class RegisterSuccesState extends AuthState {}

class RegisterFailerState extends AuthState {
  final String error;
  RegisterFailerState({required this.error});
}
