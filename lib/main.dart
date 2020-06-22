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

class MyApp extends StatelessWidget {

  // widgetはbuildメソッドを提供する
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: RandomWords(),
    );
  }
}

// StatefulWidget
// 実装のためには2つのクラスが必要
// StatefulWidgetクラス、Stateクラス
// StatefulWidget自体はimmutable
class RandomWordsState extends State<RandomWords> {
  // 後で読む
  // https://dart.dev/guides/language/language-tour
  // for saving suggested word pairings
  final _suggestions = <WordPair>[];
  // for making the font size larger
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator!!'),
      ),
      body: _buildSuggestions(),
    );
  }

  // ListViewを構築する
  // DividerかListTitleを返す
  _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        // ここで無限スクロールにしてる
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        };
        return _buildRow(_suggestions[index]);
      });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}