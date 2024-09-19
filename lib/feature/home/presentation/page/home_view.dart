import 'dart:math';

import 'package:bookia_app/core/constants/icons_functions.dart';
import 'package:bookia_app/core/utils/Colors.dart';
import 'package:bookia_app/core/utils/Font_style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
} 

class _HomeViewState extends State<HomeView> {
int selectedBanner=0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
              height: 32,
              child: Image.asset("assets/images/logo1.png")),
          actions: [
            IconButton(onPressed: (){},icon:SvgPicture.asset(AppIcons.Notification),),
             IconButton(onPressed: (){},icon:SvgPicture.asset(AppIcons.search),)
          ]), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          CarouselSlider.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
           Stack(children: [
            ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("assets/images/banner.png",
        height: 150,
        fit: BoxFit.cover,
        ))
           ],),
            options: CarouselOptions(
        height: 150,
        viewportFraction: 1 ,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
       
        onPageChanged: (value,reson){
          setState(() {
            selectedBanner=value;
            });

        },
        scrollDirection: Axis.horizontal,
           )
         ),
         Gap(20),
         SmoothPageIndicator(    
   controller: PageController (
    initialPage: selectedBanner,
   ),  // PageController    
   count:  4,    
   
   effect: ExpandingDotsEffect (
    activeDotColor: AppColors.Primary, // active dot color
    dotHeight: 7,
    radius: 7,
    dotWidth: 7,
    expansionFactor: 7
   ),   
   onDotClicked: (index){    
  }
)
        
        ],),
      ) ,
    );
  }
}