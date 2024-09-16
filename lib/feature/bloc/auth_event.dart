import 'package:bookia_app/feature/auth/data/models/request/register_params.dart';

class AuthEvent {}

class RegesterEvent extends AuthEvent {
  final RegisterParams params;

  
  RegesterEvent(this.params);
}
