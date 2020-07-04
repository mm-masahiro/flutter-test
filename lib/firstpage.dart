import 'package:flutter/material.dart';
import './FirstPageComponent/assets.dart';
import './FirstPageComponent/trade.dart';
import './FirstPageComponent/stock.dart';
import './FirstPageComponent/menu.dart';

class FirstPage extends StatefulWidget{
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  int _selectedItemIndex = 0;

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
          children: <Widget>[
            buildNavBarItem(Icons.home, 0, true),
            buildNavBarItem(Icons.search, 1, false),
            buildNavBarItem(Icons.receipt, 2, false),
            buildNavBarItem(Icons.portrait, 3, false),
            // Menu(
            //   icon: Icon(Icons.search),
            //   title: Text('Search'),
            // ),
            // Menu(
            //   icon: Icon(Icons.receipt),
            //   title: Text('News'),
            // ),
            // Menu(
            //   icon: Icon(Icons.portrait),
            //   title: Text('My Page'),
            // ),
          ]
        ),
      );
  }

  Widget buildNavBarItem(IconData icon,int index, bool isActive) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedItemIndex = index;
        });
      },
          child: Menu(
        icon: Icon(icon),
        title: Text('Home'),
        color: index == _selectedItemIndex ? Colors.grey : Colors.grey.withOpacity(0.2),
      ),
    );
  }
}
