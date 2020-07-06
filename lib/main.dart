// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_app/SearchPage/searchpage.dart';
import './firstpage.dart';
import './SearchPage/searchpage.dart';
import './NewsPage/newspage.dart';
import './Mypage/mypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Demo Trade app',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: FirstPage(),
      routes: {
        '/home': (context) => FirstPage(),
        '/search': (context) => SearchPage(),
        '/news': (context) => NewsPage(),
        '/mypage': (context) => MyPage(),
      },
    );
  }
}
