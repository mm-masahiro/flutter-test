import 'package:flutter/material.dart';
import 'package:my_app/card-origin.dart';


class AssetStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardOrigin(
        title: Text(
          '資産詳細',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        icon: Icon(Icons.monetization_on, size: 80,),
      ),
    );
  }
}