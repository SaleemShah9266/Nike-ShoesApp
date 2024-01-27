import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text("Add To cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 10),
                Icon(CupertinoIcons.cart_fill_badge_plus,
                color: Colors.blue,
                size: 25,),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              child: Row(
                children: [
               
                  Icon(
                  Icons.shopping_bag,
                    color: Colors.blue,
                    size: 25,),
                ],
              ),
            ),
          ),


        ],
      ),
    );


  }
}