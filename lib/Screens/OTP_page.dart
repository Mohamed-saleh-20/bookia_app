import 'package:bookia_app/Functions/widgets/text_form_field.dart';
import 'package:bookia_app/Screens/Forget_Password_page.dart';
import 'package:bookia_app/Screens/creat_newPassword_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
 
class OtpPage extends StatefulWidget {
  @override
  State<OtpPage> createState() => _OtpPage();
}

class _OtpPage extends State<OtpPage> {
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
                                   builder: (context) => ForgetPassword()),
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
                      "OTP Verification",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                     Text(
                      "Enter the verification code we just sent on your email address.",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Color(0xff8391A1) ,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),

                Gap(60),
               
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                 OtpField(),
                 OtpField(),
                 OtpField(),
                 OtpField(),

                ],),
               
                Gap(80),
                 Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {   Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreatNewpasswordPage()),
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
                      Gap(30),
              
                  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Didn’t received code? "),
                          TextButton(
                            onPressed: () {Navigator.pushReplacement(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => OtpPage()),
                            );},
                            child: Text("Resend ",style: GoogleFonts.dmSerifDisplay(color: Color.fromARGB(255, 189, 156, 72),fontSize: 17,fontWeight: FontWeight.w400)),
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
