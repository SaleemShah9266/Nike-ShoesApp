import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowItemWidget extends StatelessWidget {
  const RowItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 5; i++)
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10,left: 15),
            padding: EdgeInsets.symmetric(horizontal: 10),
             height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Stack(
                   alignment: Alignment.center,
                  children: [
                    Container(
                       margin: EdgeInsets.only(top: 5,right:5),
                   height: 120,width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    ),
                    Image.asset("assets/images/shoes1.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,)
                    
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nike Shoe",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Men's Shoe",
                    style: TextStyle(
                      color: Colors.black45.withOpacity(0.8),
                      fontSize: 16,
                    ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text("\$50",style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        SizedBox(width: 70),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            CupertinoIcons.cart_fill_badge_plus,
                            size: 25,
                            color: Colors.white,

                          ),
                        )
                      ],
                    )
                  ],
                ),)
              ],
            ),
          )
        ],
      ),

    );
  }
}
