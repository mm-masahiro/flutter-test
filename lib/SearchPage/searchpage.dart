import 'package:flutter/material.dart';
import './SearchPageComponent/searchstock.dart';
import './SearchPageComponent/stock-ranking.dart';
import './SearchPageComponent/industory-ranking.dart';

class SearchPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Search Page',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          SearchStock(),
          StockRanking(),
          IndustoryRanking()
        ],
      ),
    );
  }
}