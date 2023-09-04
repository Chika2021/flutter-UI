import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/categories.dart';
import 'package:flutter_app/widgets/homeappbar.dart';
import 'package:flutter_app/widgets/itemswidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            // height: 500 ,
            padding: const EdgeInsets.only(top: 15 ),
            decoration: const BoxDecoration(
              color: Color.fromARGB(31, 127, 100, 100),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left:5),
                        
                        height: 50,
                        width: 320,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Here',
                          ),
                        ),
                        
                      ),
                      const Spacer() ,
                      const Icon(Icons.camera_alt , 
                      color: Colors.blue,
                      ),
                    ],
                  )
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10
                  ),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                    ),
                  ),
                ),
                const CategoriesWidget(),

                Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.symmetric(vertical:20, horizontal: 10),
                  child: const Text('Best Selling' ,
                              style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue
                              ),),
                ),
                const ItemsWidget(),
                
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {}, 
        height: 70,
        color: Colors.blue,
              
        items:  [
        Icon(Icons.home , size: 30 , color: Colors.white),
        Icon(CupertinoIcons.cart , size: 30 , color: Colors.white),
        Icon(Icons.list , size: 30 , color: Colors.white),
      ]),


    );
  }
}