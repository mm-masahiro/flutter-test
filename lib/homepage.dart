import 'package:flutter/material.dart';
import 'package:my_app/FirstPageComponent/assets.dart';
import 'package:my_app/FirstPageComponent/stock.dart';
import 'package:my_app/FirstPageComponent/trade.dart';

class HomePage extends StatelessWidget {
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
        )
    );
  }
}