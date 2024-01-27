import 'dart:ui';

import 'package:flutter/material.dart';

import '../Widget/AllItemsWidget.dart';
import '../Widget/HomeBottomNavBar.dart';
import '../Widget/RowItemWidget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),

                    ),
                    child: Icon(
                      Icons.sort,
                      size: 30,
                      color: Colors.blue,
                    ),

                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),

                    ),
                    child: Badge(

                      backgroundColor: Colors.redAccent,

                      padding: EdgeInsets.all(7),
                       child: Icon(
                         Icons.notifications,
                         color: Colors.blue,
                       )



                    ),


                  ),

                ],
              ),
              ),
              SizedBox(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Row(


                  children: [
                    Container(
                    width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,
                          hintText: "Search",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search,
                    size: 28,
                    color: Colors.grey,)
                  ],
                ),
              ),
           SizedBox(height: 30),
           RowItemWidget(),
              AllItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
