import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Widget/ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),

                    ),
                     Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(

                height: MediaQuery.of(context).size.height * 0.43,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      margin: EdgeInsets.only(top: 20,right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset("assets/images/shoes1.png",
                      height: 350,
                      width: 350,
                      fit: BoxFit.contain,
                    )

                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height *0.4,
                  width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New Nike Shoe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.grey,
                        ),),
                Text("\$30",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.redAccent,
                  ),
                ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                        initialRating: 4,
                        maxRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _ )=> Icon(Icons.star,color: Colors.orange),
                        onRatingUpdate: (index){},
                      ),

                    ),
                    SizedBox(height: 20),
                    Text("The is descriptions of the shoes where your best choise is here ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,

                    ),
                    textAlign: TextAlign.justify),

                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("size",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,

                        ),
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            for (int i =5; i<10; i++ )
                              Container(
                                height: 35,width: 35,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(i.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ) ,),
                              ),

                          ],
                        )
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
       bottomNavigationBar:ItemBottomNavBar(),
    );
  }
}
