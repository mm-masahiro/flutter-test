import 'package:flutter/material.dart';
import 'package:my_app/login.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
						child: Text(
							'Menu',
							style: TextStyle(
								color: Colors.white
							),
						),
						decoration: BoxDecoration(
							color: Colors.blue
						),
          ),
          ListTile(
            title: Text('ログイン'),
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
