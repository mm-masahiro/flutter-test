import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  final Icon icon;
  final Text title;
  final Color color;

  Menu({
    this.icon,
    this.title,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        color: color 
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