import 'package:flutter/material.dart';
import 'package:shoesapp2/pages/HomePage.dart';
import 'package:shoesapp2/pages/ItemPage.dart';
import 'package:shoesapp2/pages/LoginPage.dart';
void main(){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
      ,
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.blue,

      ),
      routes: {
        "/": (context) => LoginPage(),
        "HomePage": (context) => HomePage(),
        "ItemPage": (context) => ItemPage(),
      },
    );
  }
}
