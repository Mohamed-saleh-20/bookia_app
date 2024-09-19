import 'package:bookia_app/core/widgets/nav_bar_widget.dart';
import 'package:bookia_app/feature/Screens/welcom_screen.dart';
import 'package:bookia_app/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:bookia_app/feature/intro/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child:
          MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()),
    );
  }
}
 