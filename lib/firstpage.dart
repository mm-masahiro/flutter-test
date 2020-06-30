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
          title: Text('Stock Demo Trade app'),
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
              color: Colors.grey,
              height: 60
            ),
            Menu(
              icon: Icon(Icons.search),
              color: Colors.grey,
              height: 60
            ),
            Menu(
              icon: Icon(Icons.receipt),
              color: Colors.grey,
              height: 60
            ),
            Menu(
              icon: Icon(Icons.portrait),
              color: Colors.grey,
              height: 60
            ),
          ]
        ),
      );
  }
}