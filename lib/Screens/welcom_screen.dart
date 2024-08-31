import 'package:bookia_app/Screens/login_page.dart';
import 'package:bookia_app/Screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/c133/ce1a/81ff5d4f839063aed5c3705ca8c0781c?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Yz1RUJZnJHuFQsfvWE0evxbina~tVZ7PXCB4CoX55rpMfmMZaazmP-M0JMeMirzFAGt0PtY6M5a31Xq3R553EEeotIUPjfRHoAiqQ6yrcMpJKkpW~RTGlIJfv6V7op6RYTnZPmiNPHnbBdDt-UwEFMAcBb8E0CWdqjqGS2ku0PJHwpgadwzLjmVteJh~Oh-fu8mHjAIvl3jgy1rjRkJvLD4NV1WoqwFlDpzIPxYy2t9-OYloArTA70g7sh5Rf7V5FOu3ZMiDw5WG8rxpxoIn0750QcGurD1EYwbFOiLP-FG8KW9Ho6FrdlkuHmRMRc8tQkQJgk1R~8lHAf8EnOBzYw__'), // Add a background image here.
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 143,
              left: 84,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 60, child: Image.asset("assets/logo.png")),
                      Gap(15), 
                      Text(
                        "Bookia",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                ],
              ),
            ),
            Positioned(
              bottom: 120,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.9, 
                    child: ElevatedButton(
                      onPressed: () {  Navigator.pushReplacement( context, MaterialPageRoute( builder: (context) => LoginPage()),);
                         },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBFA054),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), 
                          ),
                      ),
                      child: Text(
                        "Login",
                        style:GoogleFonts.dmSerifDisplay(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),Gap(20),
                   Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.9, 
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => SignupPage()),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), 
                          ),
                      ),
                      child: Text(
                        "Register",
                        style:GoogleFonts.dmSerifDisplay(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
