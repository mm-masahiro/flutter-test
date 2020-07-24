
import 'package:flutter/material.dart';
import 'package:my_app/NewsPage/Models/category_model.dart';
import 'package:my_app/NewsPage/Services/webservice.dart';
import 'package:my_app/NewsPage/viewmodels/newArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier {

  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();

  NewsArticleListViewModel() {
    _populateTopHeadLines();
  }

  Future<void> _populateTopHeadLines() async {
    List<NewsArticle> newsArticles = await Webservice().fetchTopHeadlines();
    this.articles = newsArticles.map((article) => NewsArticleViewModel(article: article)).toList();
    notifyListeners();
  }

}
