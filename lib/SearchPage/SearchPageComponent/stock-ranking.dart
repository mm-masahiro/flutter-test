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
     icon: Icon(Icons.show_chart, size: 80,),
      text: Text(
       '各種ランキング',
       style: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.bold
       ),
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