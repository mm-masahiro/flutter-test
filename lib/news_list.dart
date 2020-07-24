import 'package:flutter/material.dart';
import 'package:my_app/NewsPage/newspage.dart';
import 'package:my_app/NewsPage/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class News extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      home: ChangeNotifierProvider(
        create: (context) => NewsArticleListViewModel(),
        child: NewsPage(),
      ),
    );
  }
}
