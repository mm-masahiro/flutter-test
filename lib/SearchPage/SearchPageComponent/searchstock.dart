import 'package:flutter/material.dart';
import './card-origin.dart';

class SearchStock extends StatelessWidget {
 final Widget searchStock = Container(
   child: SearchCard(
     title: Text(
       '銘柄検索',
       style: TextStyle(
         color: Colors.white
       )
     ),
   ),
 );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: searchStock,
    );
  }
}