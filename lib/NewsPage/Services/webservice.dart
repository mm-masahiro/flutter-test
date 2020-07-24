import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_app/NewsPage/Models/category_model.dart';

class Webservice {
  Future<List<NewsArticle>> fetchTopHeadlines() async {

    String url = 'http://newsapi.org/v2/everything?domains=wsj.com&apiKey=ad9a3b9e852c4fbebb12f66e2adb2ee6';

    final response = await http.get(url);

    if (response.statusCode == 200) {

      final result = json.decode(response.body);
      Iterable list = result("articles");
      return list.map((article) => NewsArticle.fromJSON(article)).toList();

    } else {
      // print(response.statusCode.toString());
      throw Exception("Failed to get top news");
    }

    // try {
    //   String url = 'http://newsapi.org/v2/everything?domains=wsj.com&apiKey=ad9a3b9e852c4fbebb12f66e2adb2ee6';

    //   final response = await http.get(url);

    //   if (response.statusCode == 200) {

    //     final result = json.decode(response.body);
    //     Iterable list = result("articles");
    //     return list.map((article) => NewsArticle.fromJSON(article)).toList();

    //   } else {
    //     print(response.statusCode.toString());
    //     throw Exception("Failed to get top news");
    //   } 
    // } catch (e) {
    //   print(e);
    //   throw e;
    // }
  }
}
