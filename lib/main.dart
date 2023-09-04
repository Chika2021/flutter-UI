import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cartpage.dart';
import 'package:flutter_app/pages/homepage.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

      routes: {
        '/' :(context) => const HomePage(),
        'cartPage' : (context) => const CartPage()
      },

    );
  }
}