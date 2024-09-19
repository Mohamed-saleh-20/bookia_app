 
 
 
 
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

  LoadingDialog( BuildContext  context){
 showDialog(
            context: context, 
            builder: (context){
             return Lottie.asset('assets/images/loading.json');
          },
            barrierDismissible: false, 
          );
          }