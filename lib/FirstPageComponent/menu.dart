import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  final Icon icon;

  Menu({
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        color: Colors.grey
      ),
      child: icon,
    );
  }
}