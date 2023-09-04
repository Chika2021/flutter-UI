import 'package:flutter/material.dart';
class ItemsWidget extends StatefulWidget {
  const ItemsWidget({super.key});

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8 ; i++)
        Container(
          padding: const EdgeInsets.only(left: 8 , right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [  
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '- 50% ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const Icon(Icons.favorite_border, 
                        color: Colors.red
                        ),

                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset('images/$i.png', height: 120, width: 120,),
                ),
              ),
               Container(padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: const Text('Product Title', style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),)
                            ),
              Container(child: Text('Write discription of product ' , style: TextStyle(fontSize: 15, color: Colors.blue),),),

              const Padding(padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$55' ,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: Colors.blue),),
                          Icon(Icons.shopping_cart_checkout , color: Colors.blue,),
                        ],
                      ),
              ),


            ],
          ),
          
        ),
      ],
      );
  }
}