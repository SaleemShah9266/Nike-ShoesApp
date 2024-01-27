
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: SafeArea(
         child: Column(
           children: [
             Padding(padding: EdgeInsets.symmetric(vertical: 25),
             child: Image.asset("assets/images/aac.png"),
             ),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 25),
               padding: EdgeInsets.symmetric(horizontal: 15),
               height: 55,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(12)
               ),
               child: Row(
                 children: [
                   Icon(Icons.person,size: 30,
                   color: Colors.grey,),
                   SizedBox(width: 10,),
                   Container(
                     width: 250,
                     child: TextFormField(
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: "Enter UserName",
                         hintStyle: TextStyle(
                           color: Colors.grey,
                       ),
                     ),
                   ),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 25,),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 25),
               padding: EdgeInsets.symmetric(horizontal: 15),
               height: 55,
               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(12)
               ),
               child: Row(
                 children: [
                   Icon(Icons.lock,size: 30,
                     color: Colors.grey,),
                   SizedBox(width: 10,),
                   Container(
                     width: 250,
                     child: TextFormField(
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: "Enter Password",
                         hintStyle: TextStyle(
                           color: Colors.grey,
                         )

                       ),
                     ),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 10,),
             Container(
               margin: EdgeInsets.only(left: 15),
               alignment: Alignment.centerLeft,
               child: TextButton(
                 onPressed: (){},
                 child: Text(
                   "Forget Password",
                   style: TextStyle(
                     color: Colors.blue,fontSize: 16,
                     fontWeight: FontWeight.w500,
                   ),

                 ),
               ),
             ),
             SizedBox(height: 40),
             InkWell(
               onTap: (){
                 Navigator.pushNamed(context, "HomePage");
               },
               child: Container(
                 alignment: Alignment.center,
                 margin: EdgeInsets.only(left: 100,right: 100),
                 padding: EdgeInsets.symmetric(horizontal: 15),
                 height: 55,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(12),

                 ),
                 child: Text(
                   "Sign In",
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.w500,
                     color: Colors.grey,
                     letterSpacing: 1,
                   ),
                 ),


                 
               ),

             ),
             SizedBox(height: 50),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have Account? - ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,

                ),
                 ),
                 TextButton(onPressed: (){},
                     child: Text(
                      "Sign Up",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.w500,
                         fontSize: 18,
                       ),
                     ),

                 ),

               ],
             ),
           ],
         ),
       ),
      ),
    );
  }
}
