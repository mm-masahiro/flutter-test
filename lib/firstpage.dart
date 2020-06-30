import 'package:flutter/material.dart';
import './FirstPageComponent/assets.dart';
import './FirstPageComponent/trade.dart';
import './FirstPageComponent/stock.dart';
import './FirstPageComponent/menu.dart';

class FirstPage extends StatelessWidget {
  // int _currentIndex = 0;

  // final Widget menu = Container(
  //   List<BottomNavigationBarItem> myBottomNavBarItems() {
  //     return [
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.home),
  //         title: const Text('Home'),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.search),
  //         title:  const Text('Search')
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.receipt),
  //         title: const Text('News')
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.portrait),
  //         title: const Text('Mypage')
  //       ),
  //     ];
  //   }
  // );


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
        // bottomNavigationBar: Menu(),
        bottomNavigationBar: Row(
          children: <Widget>[
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Icon(Icons.home)
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Icon(Icons.search)
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Icon(Icons.receipt)
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Icon(Icons.portrait)
            ),
          ]
        ),
      );
  }
}