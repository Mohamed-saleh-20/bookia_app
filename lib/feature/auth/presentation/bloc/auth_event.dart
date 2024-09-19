import 'package:bookia_app/feature/auth/data/models/request/login_params.dart';
import 'package:bookia_app/feature/auth/data/models/request/register_params.dart';

class AuthEvent {}


// ------------- Regester Event --------------

    class RegesterEvent extends AuthEvent {
  final RegisterParams params;

  RegesterEvent(this.params);
}


//---------------- Login Event ---------------

    class LoginEvent extends AuthEvent {
  final LoginParams params;

  LoginEvent({required this.params});
}
