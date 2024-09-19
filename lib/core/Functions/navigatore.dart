import 'package:flutter/material.dart';


//-------------------Push Navigatore--------------

push(

  BuildContext context,
   Widget newScreen

   ) {

  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => newScreen));
}



//-------------------Push Replacment Navigatore--------------

pushReplacment(

  BuildContext context,
   Widget newScreen
   
   ) {

  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => newScreen));
}
