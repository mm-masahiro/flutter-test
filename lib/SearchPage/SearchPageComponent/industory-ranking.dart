import 'package:flutter/material.dart';
import './card-origin.dart';

class IndustoryRanking extends StatelessWidget {
 final Widget industoryRanking = Container(
   child: SearchCard(
     title: Text(
       '業界別ランキング',
       style: TextStyle(
         color: Colors.white
       )
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