import 'package:flutter/material.dart';
import './FirstPageComponent/assets.dart';
import './FirstPageComponent/trade.dart';
import './FirstPageComponent/stock.dart';

// class Menu extends StatelessWidget{
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

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         item: myBottomNavBarItems()
//       )
//     );
//   }
// }


class FirstPage extends StatelessWidget {

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
        body: Center(
          child: ListView(
            children: [
              Assets(),
              Trade(),
              Stock()
            ]
          ),
         
        )
      );
  }
}