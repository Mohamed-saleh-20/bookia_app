import 'package:bookia_app/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';



class AcceptenessPage extends StatefulWidget {
  @override
  State<AcceptenessPage> createState() => _AcceptenessPage();
}

class _AcceptenessPage extends State<AcceptenessPage> {
  final formKey = GlobalKey<FormState>();
  bool isOb = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Container(width: 200,height: 200,child: Lottie.asset('assets/animation.json',fit: BoxFit.fill,)),
        Gap(40),
         Text(
                  "Password Changed!",
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(20),
                 Text(
                  "Your password has been changed successfully.",
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color(0xff8391A1) ,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Gap(40),
                 Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFBFA054),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Back to Login",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),

      ],),),
    );}}