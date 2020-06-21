// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

// ↑は↓と同じ 
// main() {
//   runApp(MyApp());
// }

// StatelessWidgetはappをwidgetにする
// Flutterでは、alignment, padding, layoutを含めたすべてがWidget

// StatelessWidgetはimmutable
// すべての値はfinal
// 値を変更することができない

// StatefulWidget
// 実装のためには2つのクラスが必要
// StatefulWidgetクラス、Stateクラス
// StatefulWidget自体はimmutable
class MyApp extends StatelessWidget {

  // widgetはbuildメソッドを提供する
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      // Scaffold Widgetがレイアウトを提供してくれている
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),

        // Center widgetがwidget subtreeをcenterに並べる
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  // TODO: Add build method
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}