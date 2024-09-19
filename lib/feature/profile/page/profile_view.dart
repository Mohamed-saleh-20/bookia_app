import 'package:bookia_app/core/utils/Font_style.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text("Profile",style: getTitleTextStyle(fontSize: 35),),),
    );
  }
}