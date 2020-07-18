import 'package:flutter/material.dart';
import '../../card-origin.dart';


class IndustoryRanking extends StatelessWidget {
 final Widget industoryRanking = Container(
   child: CardOrigin(
     title: Text(
       '業界別ランキング',
       style: TextStyle(
         color: Colors.white
       )
     ),
     icon: Icon(Icons.business, size: 80, color: Colors.cyan,),
     text: Text(
      '業界別ランキング',
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
      child: industoryRanking,
    );
  }
}