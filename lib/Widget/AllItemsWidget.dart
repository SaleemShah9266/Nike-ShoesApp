import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllItemsWidget extends StatelessWidget {
  const AllItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i=1; i < 5; i++)
          Container(
            padding: EdgeInsets.only(left: 20,right: 20,top: 15),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "ItemPage");
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("assets/images/shoes5.png",
                      height:110,
                     width: 110),
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  bottom: 5),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nike Shoe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black45,
                    ),
                  ),
                ),

                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "New Nike Shoe for Men",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),

                  ),
                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("\$55",
                         style: TextStyle(
                           color: Colors.redAccent,
                           fontSize: 20,
                           fontWeight: FontWeight.w500,
                         ),
                         ),
                         Container(
                           padding: EdgeInsets.all(5),
                           decoration: BoxDecoration(
                             color: Colors.blue,
                             borderRadius: BorderRadius.circular(10),

                           ),
                           child: Icon(
                             CupertinoIcons.cart_fill_badge_plus,
                             color: Colors.white,
                             size: 28,
                           ),
                         )
                       ],
                     ),
    )


              ],
            ),



          ),
      ],


    );
  }
}
