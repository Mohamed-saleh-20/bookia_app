import 'package:bookia_app/core/utils/Font_style.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text("Cart",style: getTitleTextStyle(fontSize: 35),),),
    );
  }
}