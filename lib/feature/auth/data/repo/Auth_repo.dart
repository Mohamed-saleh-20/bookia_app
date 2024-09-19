import 'dart:developer';
import 'package:bookia_app/core/constants/constants.dart';
import 'package:bookia_app/feature/auth/data/models/request/login_params.dart';
import 'package:bookia_app/feature/auth/data/models/request/register_params.dart';
import 'package:bookia_app/feature/auth/data/models/response/login_model/login_model.dart';
import 'package:bookia_app/feature/auth/data/models/response/register_model/register_model.dart';
import 'package:dio/dio.dart';


 class AuthRepo {

// ------------------------------  register repo  --------------------------------------


  static Future<RegisterModel?> register(RegisterParams params) async {

    try {     
      String url =
          AppConstants.baseUrl + AppConstants.RegisterEndpoiint;
      var response = await Dio ().post(url, data: params.toJson());

      if (response.statusCode == 201) {

        return RegisterModel.fromJson(response.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }

    
// --------------------------------  Login repo  ----------------------------------------

  static Future<LoginModel?> login(LoginParams params) async {

    try {    
      String url =
          AppConstants.baseUrl + AppConstants.RegisterEndpoiint;
      var response = await Dio ().post(url, data: params.toJson());

      if (response.statusCode == 200) {
        return LoginModel.fromJson(response.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }



}

















 // 1) parse baseURL +endpoint from String to URi
    //2) call API with specifide method(get,post,..)
    //3) check the statuse code
    //4)convert response body From String to json
    //5) if 200 => parse json response to repo
    //6) handle