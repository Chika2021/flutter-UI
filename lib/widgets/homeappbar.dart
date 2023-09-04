import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(Icons.sort, size: 30, color: Colors.blue),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'My Shop',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 23),
            ),
          ),
          const Spacer(),
          Badge(
            padding: EdgeInsets.all(7),
            textColor: Colors.red,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cartPage');
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
