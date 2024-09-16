import 'package:bookia_app/feature/auth/data/repo/Auth_repo.dart';
import 'package:bookia_app/feature/bloc/auth_event.dart';
import 'package:bookia_app/feature/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegesterEvent>(register);
  }


  Future<void> register(RegesterEvent event, Emitter<AuthState> emit) async{
    emit(RegisterLoadingState());
// handle API call
   AuthRepo.register(event.params).then((value){
    if(value != null){
     emit(RegisterSuccesState());
    }else{
    emit(RegisterFailerState(error: "somthing went wrong"));
     }
   });
   }
}
