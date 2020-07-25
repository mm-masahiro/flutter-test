import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/homepage.dart';
import './SearchPage/searchpage.dart';
import './NewsPage/newspage.dart';
import './MyPage/mypage.dart';

class FirstPage extends StatefulWidget{
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        iconSize: 25,
        items:  <BottomNavigationBarItem>[
          buildBottomNavigationBarItem(Icons.home, 0, Text('Home')),
          buildBottomNavigationBarItem(Icons.search, 1, Text('Search')),
          buildBottomNavigationBarItem(Icons.receipt, 2, Text('News')),
          buildBottomNavigationBarItem(Icons.portrait, 3, Text('Mypage'))
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0 :
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: HomePage()
              );
            },);
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SearchPage()
              );
            },);
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: NewsPage()
              );
            },);
            break;
          case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: MyPage()
              );
            },);
            break;
        }
        return returnValue;
      },
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(IconData icon, int index, Text title) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: title,
    );
  }
}
