import 'package:bookia_app/Functions/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        
        actions: []
      ),
      body: Column(
        children: [Container(width: double.infinity,color: Colors.red,)
          
        ]
      ),
    );
  }
}