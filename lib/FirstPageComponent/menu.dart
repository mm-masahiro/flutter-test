import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  final Icon icon;
  final Text title;

  Menu({
    this.icon,
    this.title
  });

  @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     height: 60,
  //     width: MediaQuery.of(context).size.width/4,
  //     decoration: BoxDecoration(
  //       color: Colors.grey
  //     ),
  //     child: icon,
  //   );
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        color: Colors.grey
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            child: icon,
          ),
          Container(
            height: 20,
            child: title,
          )
        ]
      ),
    );
  }
}