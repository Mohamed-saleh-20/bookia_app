import 'package:flutter/material.dart';

push(BuildContext context, Widget newScreen) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => newScreen));
}

pushReplacment(BuildContext context, Widget newScreen) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => newScreen));
}
