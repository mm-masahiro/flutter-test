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
     icon: Icon(Icons.search, size: 80, color: Colors.indigoAccent,),
     text: Text(
       '検索',
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
      child: searchStock,
    );
  }
}