import 'package:flutter/material.dart';


class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.blue,
      ),
      // body: ListView.builder()
    );
  }
}
