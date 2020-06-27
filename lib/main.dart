// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget firstPage = Container(
      
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '総資産'
                ),
                Text(
                  '注文状況'
                ),
                Text(
                  '保有銘柄'
                ),
              ]
            ),
          )
        ],
      ),
    );
    return MaterialApp(
      title: 'Stock Demo Trade app',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stock Demo Trade app'),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Center(
                child: firstPage
              )
            ]
          )
        ),
      )
    );
  }
}
