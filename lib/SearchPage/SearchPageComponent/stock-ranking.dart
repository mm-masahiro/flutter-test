import 'package:flutter/material.dart';
import './card-origin.dart';

class StockRanking extends StatelessWidget {
 final Widget stockRanking = Container(
   child: SearchCard(
     title: Text(
       'ランキング',
       style: TextStyle(
         color: Colors.white
       )
     ),
   ),
 );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: stockRanking,
    );
  }
}