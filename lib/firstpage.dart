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

  // int _selectedItemIndex = 0;

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
        backgroundColor: Colors.grey,
        iconSize: 25,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            title: Text(
              'Search',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt, color: Colors.white),
            title: Text(
              'News',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait, color: Colors.white),
            title: Text(
              'Mypage',
              style: TextStyle(
                color: Colors.white
              ),
            )
          )
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
}
