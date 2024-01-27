import 'package:flutter/material.dart';


class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25),)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.category_outlined,
          color: Colors.blue),
          Icon(Icons.favorite_border,
              color: Colors.blue),
          Icon(Icons.card_travel,
              color: Colors.blue),
          Icon(Icons.people,
              color: Colors.blue),
        ],
      ),
    );
  }
}
