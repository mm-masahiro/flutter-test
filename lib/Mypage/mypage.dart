import 'package:flutter/material.dart';
// import 'package:my_app/MyPage/MyPageComponent/tread_history.dart';
import 'package:my_app/drawer.dart';
// import './MyPageComponent/asset_status.dart';
// import './MyPageComponent/stock_status.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Page',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          // AssetStatus(),
          // StockStatus(),
          // TreadHistory()
        ],
      ),
      drawer: Menu(),
    );
  }
}
