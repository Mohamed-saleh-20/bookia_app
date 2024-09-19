import 'package:flutter/material.dart';

Widget socialLoginButton(String imageUrl) {
  return Container(
    width: 100,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(width: 0.4),
      borderRadius: BorderRadius.circular(10),
      ),
    child: Center(
      child: Image.network(
        imageUrl,
        width: 30,
        height: 30,
        fit: BoxFit.contain,
      ),
    ),
  );
}

Widget OtpField() {
  return Container(
    width: 80,
    height: 80,
    child: Center(
        child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: "0",
          hintStyle: TextStyle(color: Color(0xff6A707C)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
    )),
  );
}
