import 'package:bookia_app/Screens/OTP_page.dart';
import 'package:bookia_app/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<ForgetPassword> createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  final formKey = GlobalKey<FormState>();
  bool isOb = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromARGB(255, 243, 240, 234),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => LoginPage()),
                            );
                      },
                      icon: Icon(Icons.arrow_back_ios_outlined),
                    ),
                  ),
                ),
                Gap(40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                     Text(
                      "Don't worry! It occurs. Please enter the email\n address linked with your account.",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Color(0xff8391A1) ,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(color: Color(0xff6A707C)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
               
               
                Gap(10),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Gap(30),
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {   Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpPage()),
                            );},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFBFA054),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Send Code",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                     Gap(370),
                     
                      
                     
                      
                    ],
                  ),
                )
                 ,Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Remember Password?"),
                          TextButton(
                            onPressed: () {Navigator.pushReplacement(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => OtpPage()),
                            );},
                            child: Text("Login ",style: GoogleFonts.dmSerifDisplay(color: Color.fromARGB(255, 189, 156, 72),fontSize: 17,fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
