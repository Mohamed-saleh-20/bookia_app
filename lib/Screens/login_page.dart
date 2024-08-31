import 'package:bookia_app/Screens/signup_page.dart';
import 'package:bookia_app/Screens/welcom_screen.dart';
import 'package:bookia_app/Screens/Forget_Password_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookia_app/Functions/methods.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                                   builder: (context) => WelcomeScreen()),
                            );
                      },
                      icon: Icon(Icons.arrow_back_ios_outlined),
                    ),
                  ),
                ),
                Gap(40),
                Text(
                  "Welcome Back!Glad\nto see you,Again!",
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                  ),
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
                SizedBox(
                  height: 30,
                ),
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
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Color(0xff6A707C)),
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
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Gap(10),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ForgetPassword()),
                                );
                            },
                            child: Text(
                              "Forget Password",
                              style: GoogleFonts.dmSerifDisplay(
                                color: Color(0xff6A707C),
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(30),
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
                            "Login",
                            style: GoogleFonts.dmSerifDisplay(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Row(
                        children: [
                          Expanded(child: Divider()),
                          Gap(20),
                          Text(
                            "Or Login With ",
                            style: GoogleFonts.dmSerifDisplay(
                                color: Color(0xff6A707C),
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                          Gap(20),
                          Expanded(child: Divider())
                        ],
                      ),
                      Gap(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialLoginButton(
                              "https://cdn-icons-png.flaticon.com/128/3128/3128304.png"),
                          Gap(10),
                          socialLoginButton(
                            "https://cdn-icons-png.flaticon.com/128/281/281764.png",
                          ),
                          Gap(10),
                          socialLoginButton(
                            "https://cdn-icons-png.flaticon.com/128/0/747.png",
                          ),
                        ],
                      ),
                      Gap(70),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't Have an Account?"),
                          TextButton(
                            onPressed: () {Navigator.pushReplacement(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => SignupPage()),
                            );},
                            child: Text("Register Now",style: GoogleFonts.dmSerifDisplay(color: Color.fromARGB(255, 189, 156, 72),fontSize: 16,fontWeight: FontWeight.w400)),
                          ),
                        ],
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
