import 'package:bookia_app/core/widgets/profile_widget.dart';
import 'package:bookia_app/core/utils/Colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int Itemindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
              height: 30,
              width: 100,
              child: Image.asset("assets/images/logo1.png")),
          actions: []),
      body: Container(width: double.infinity, color: AppColors.Primary),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.Background,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.Primary,
          unselectedItemColor: Colors.black,
          currentIndex: Itemindex,
          onTap: (value) {
            setState(() {
              Itemindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          ]),
    );
  }
}
