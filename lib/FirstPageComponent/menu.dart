import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  final Icon icon;
  final Color color;
  final double height;

  Menu({
    this.icon,
    this.color,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        color: color
      ),
      child: icon,
    );
  }
}