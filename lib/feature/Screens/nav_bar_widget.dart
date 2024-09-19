import 'package:bookia_app/core/constants/icons_functions.dart';
import 'package:bookia_app/core/widgets/profile_widget.dart';
import 'package:bookia_app/core/utils/Colors.dart';
import 'package:bookia_app/feature/cart/page/cart_view.dart';
import 'package:bookia_app/feature/home/presentation/page/home_view.dart';
import 'package:bookia_app/feature/profile/page/profile_view.dart';
import 'package:bookia_app/feature/wishlist/page/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  
  int Itemindex = 0;
  List<Widget> pages =const[

   HomeView(),
   WishlistView(),
   CartView(),
   ProfileView(),
   

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pages[Itemindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.Background,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.Primary,
          unselectedItemColor: Colors.black,
          currentIndex: Itemindex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              Itemindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon:SvgPicture.asset(AppIcons.Home), label: 'Home',activeIcon:SvgPicture.asset(AppIcons.Home,colorFilter: ColorFilter.mode(AppColors.Primary, BlendMode.srcIn),), ),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.Favorite), label: 'Search',activeIcon:SvgPicture.asset(AppIcons.Favorite,colorFilter: ColorFilter.mode(AppColors.Primary, BlendMode.srcIn),),),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.Category), label: 'Favorite',activeIcon:SvgPicture.asset(AppIcons.Category,colorFilter: ColorFilter.mode(AppColors.Primary, BlendMode.srcIn),),),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.Profile), label: 'profile',activeIcon:SvgPicture.asset(AppIcons.Profile,colorFilter: ColorFilter.mode(AppColors.Primary, BlendMode.srcIn),),),
          ]),
    );
  }
}
