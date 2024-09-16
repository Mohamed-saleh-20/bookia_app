import 'dart:convert';
import 'dart:math';
import 'dart:developer';
import 'package:bookia_app/core/constants/constants.dart';
import 'package:bookia_app/feature/auth/data/models/request/register_params.dart';
import 'package:bookia_app/feature/auth/data/models/response/register_model/register_model.dart';
import 'package:http/http.dart' as http;

class AuthRepo {
   static Future<RegisterModel?> register(RegisterParams params) async {

    // 1) parse baseURL +endpoint from String to URi
    //2) call API with specifide method(get,post,..)
    //3) check the statuse code
    //4)convert response body From String to json
    //5) if 200 => parse json response to repo
    //6) handle


    try {  
  var url = Uri.parse(AppConstants.baseUrl + AppConstants.RegisterEndpoiint);
  var response = await http.post(url, body: params.toJson());

  if (response.statusCode == 201) {
    var jsonRespons = jsonDecode(response.body);
    var model=RegisterModel.fromJson(jsonRespons);
    return model;
  }else{
    return null;
  }
} on Exception catch (e) {
  print(e);
  return null;
}
  

  }
}
