import 'package:bookia_app/feature/Screens/OTP_page.dart';
import 'package:bookia_app/feature/Screens/accepteness_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatNewpasswordPage extends StatefulWidget {
  @override
  State<CreatNewpasswordPage> createState() => _CreatNewpasswordPage();
}

class _CreatNewpasswordPage extends State<CreatNewpasswordPage> {
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
                          MaterialPageRoute(builder: (context) => OtpPage()),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios_outlined),
                    ),
                  ),
                ),
                Gap(40),
                Text(
                  "Create new password",
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Your new password must be unique from those previously used.",
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color(0xff8391A1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(40),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    } else if (value.length < 8) {
                      return "The Password must be at least 8 characters";
                    }
                    return null;
                  },
                  obscureText: isOb,
                  decoration: InputDecoration(
                    hintText: "New Password",
                    hintStyle:
                        GoogleFonts.dmSerifDisplay(color: Color(0xff6A707C)),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isOb = !isOb;
                        });
                      },
                      icon: isOb
                          ? Icon(Icons.visibility_off_rounded)
                          : Icon(Icons.remove_red_eye_rounded),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Gap(20),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    } else if (value.length < 8) {
                      return "The Password must be at least 8 characters";
                    }
                    return null;
                  },
                  obscureText: isOb,
                  decoration: InputDecoration(
                    hintText: " Confirm Password",
                    hintStyle:
                        GoogleFonts.dmSerifDisplay(color: Color(0xff6A707C)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Gap(20),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Gap(30),
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcceptenessPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFBFA054),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Reset Password",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
