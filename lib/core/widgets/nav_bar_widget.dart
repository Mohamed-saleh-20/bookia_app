import 'package:bookia_app/core/utils/Colors.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int Itemindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

   
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
