import 'package:flutter/material.dart';
import './FirstPageComponent/assets.dart';
import './FirstPageComponent/trade.dart';
import './FirstPageComponent/stock.dart';
import './FirstPageComponent/menu.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Stock Demo Trade app',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
            children: [
              Assets(),
              Trade(),
              Stock()
            ]
        ),
        bottomNavigationBar: Row(
          children: [
            Menu(
              icon: Icon(Icons.home),
            ),
            Menu(
              icon: Icon(Icons.search),
            ),
            Menu(
              icon: Icon(Icons.receipt),
            ),
            Menu(
              icon: Icon(Icons.portrait),
            ),
          ]
        ),
      );
  }
}