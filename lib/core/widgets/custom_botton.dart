

import 'package:bookia_app/feature/upload/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeButton extends StatelessWidget {

  final String? name;
  final Function()? onPressed;

CustomeButton({
    super.key,
    required this.name,
    required  this.onPressed 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: onPressed??(){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFBFA054),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text( 
          name??"Button name",
          style: GoogleFonts.dmSerifDisplay(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
