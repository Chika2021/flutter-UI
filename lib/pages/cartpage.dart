import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/cartappbar.dart';
import 'package:flutter_app/widgets/cartitemsamples.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        CartAppBar(),

        Container(
          height: 700,
          padding: const  EdgeInsets.only(top:15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 191, 186, 186),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)), 
          ),
          child: Column(
            children: [
              CartItemSamples()
            ],
          ),
        ),
      ],)
    );
  }
}
