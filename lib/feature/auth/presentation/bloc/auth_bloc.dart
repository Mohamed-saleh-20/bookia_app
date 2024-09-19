import 'dart:developer';
import 'package:bookia_app/feature/auth/data/repo/Auth_repo.dart';
import 'package:bookia_app/feature/auth/presentation/bloc/auth_event.dart';
import 'package:bookia_app/feature/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegesterEvent>(register);      
    on<LoginEvent>(login);
  }
 // ------------------------------  register Bloc  --------------------------------------
       
  Future<void> register(RegesterEvent event, Emitter<AuthState> emit) async {

    emit(RegisterLoadingState());

    // handle API for {register}

    await AuthRepo.register(event.params).then((value) {
      log(value.toString());
      if (value != null) {
        emit(RegisterSuccesState());
      } else {
        emit(RegisterFailerState(error: "somthing went wrong"));
      }
    });
  }

// --------------------------------  Login Bloc  --------------------------------------


  Future<void> login(LoginEvent event, Emitter<AuthState> emit) async {
    
    emit(LoginLoadingState());

    // handle API for {login}

    await AuthRepo.login(event.params).then((value) {
      log(value.toString());
      if (value != null) {
        emit(LoginSuccesState());
      } else {
        emit(LoginFailerState(error: "somthing went wrong"));
      }
    });
  }
}
