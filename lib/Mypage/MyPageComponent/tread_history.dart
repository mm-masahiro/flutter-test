import 'package:flutter/material.dart';
import 'package:my_app/card-origin.dart';

class TreadHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardOrigin(
        title: Text(
          '取引履歴',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        icon: Icon(Icons.swap_horizontal_circle, size: 80),
        width: 150,
      ),
    );
  }
}
