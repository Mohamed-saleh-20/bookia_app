import 'package:bookia_app/feature/Screens/welcom_screen.dart';
import 'package:bookia_app/core/Functions/navigatore.dart';
import 'package:bookia_app/core/utils/Colors.dart';
import 'package:bookia_app/feature/home/Home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      pushReplacment(context, WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(children: [
        Container(
          width: double.infinity,
          color: AppColors.Background,
        ),
        Positioned(
            top: 370, left: 100, child: Image.asset("assets/images/logo1.png"))
      ])),
    );
  }
}
