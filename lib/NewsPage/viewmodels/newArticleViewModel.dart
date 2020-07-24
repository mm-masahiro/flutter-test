

import 'package:flutter/material.dart';
import 'package:my_app/NewsPage/Models/category_model.dart';

class NewsArticleViewModel {
  
  // NewsArticle _newsArticle = NewsArticle();
  NewsArticle _newsArticle;

  NewsArticleViewModel({NewsArticle article}) : _newsArticle = article;

  String get title {
    return _newsArticle.title;
  }

  String get description {
    return _newsArticle.description;
  }

  String get imageUrl {
    return _newsArticle.urlToImage;
  }

  String get url {
    return _newsArticle.url;
  }

}