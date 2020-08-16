import 'package:flutter/material.dart';
import 'package:my_app/SearchPage/SearchPageComponent/searchStock/search_company.dart';
import 'package:my_app/drawer.dart';

class SearchPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // SearchStock(),
					SearchCompany(),
          // StockRanking(),
          // IndustoryRanking()
        ],
      ),
      drawer: Menu(),
    );
  }
}
