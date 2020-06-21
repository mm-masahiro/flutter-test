// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ↑は↓と同じ 
// main() {
//   runApp(MyApp());
// }

// StatefulWidgetはappをwidgetにする
// Flutterでは、alignment, padding, layoutを含めたすべてがWidget
class MyApp extends StatelessWidget {

  // widgetはbuildメソッドを提供する
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      // Scaffold Widgetがレイアウトを提供してくれている
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),

        // Center widgetがwidget subtreeをcenterに並べる
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
