import 'package:flutter/material.dart';
import 'package:my_app/MyPage/MyPageComponent/login.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Text('Menu'),
          ),
          ListTile(
            title: Text('Item1'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Login();
                },
              ));
            },
          ),
          ListTile(
            title: Text('Item2'),
          )
        ],
      ),
    );
  }
}