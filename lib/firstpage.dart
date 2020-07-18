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
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text(
  //           'Stock Demo Trade app',
  //           style: TextStyle(
  //             color: Colors.white
  //           ),
  //         ),
  //         backgroundColor: Colors.blue,
  //       ),
  //       body: Container(
  //         child: BottomMenu(),
  //       ),
  //   );
  //       bottomNavigationBar: Row(
  //         children: <Widget>[
  //           buildNavBarItem(Icons.home, 0, Text('Home')),
  //           buildNavBarItem(Icons.search, 1, Text('Search')),
  //           buildNavBarItem(Icons.receipt, 2, Text('News')),
  //           buildNavBarItem(Icons.portrait, 3, Text('My page')),
  //         ]
  //       ),
      // );
  // }

  // Widget buildNavBarItem(IconData icon, int index, Text title) {
  //   return GestureDetector(
  //     onTap: (){
  //       setState(() {
  //         _selectedItemIndex = index;
  //       });
  //       if (index == 1) {
  //         Navigator.of(context).pushNamed('/search');
  //       } else if (index ==2) {
  //         Navigator.of(context).pushNamed('/news');
  //       } else if (index == 3) {
  //         Navigator.of(context).pushNamed('/mypage');
  //       }
  //     },
  //     child: Menu(
  //       icon: Icon(icon, color: index == _selectedItemIndex ? Colors.blue : Colors.grey),
  //       title: title,
  //       color: index == _selectedItemIndex ? Colors.grey : Colors.grey.withOpacity(0.2),
  //     ),
  //   );
  // }
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
