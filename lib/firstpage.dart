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
            buildNavBarItem(Icons.home, 0, Text('Home')),
            buildNavBarItem(Icons.search, 1, Text('Search')),
            buildNavBarItem(Icons.receipt, 2, Text('News')),
            buildNavBarItem(Icons.portrait, 3, Text('My page')),
          ]
        ),
      );
  }

  Widget buildNavBarItem(IconData icon,int index, Text title) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedItemIndex = index;
        });
       Navigator.of(context).pushNamed('/search');
      },
      child: Menu(
        icon: Icon(icon, color: index == _selectedItemIndex ? Colors.blue : Colors.grey),
        title: title,
        color: index == _selectedItemIndex ? Colors.grey : Colors.grey.withOpacity(0.2),
      ),
    );
  }
}
