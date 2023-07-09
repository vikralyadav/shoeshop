import 'package:coffeeproject/models/cart.dart';
import 'package:coffeeproject/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Cart(),
      builder:(context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),
      
      
      );
    
  }
}