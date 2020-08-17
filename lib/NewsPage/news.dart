import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/NewsPage/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;

class News {

	List<ArticleModel> news = [];

	Future<void> getNews() async {
		// String url = "http://newsapi.org/v2/everything?domains=wsj.com&apiKey=ad9a3b9e852c4fbebb12f66e2adb2ee6";
		String url = "https://newsapi.org/v2/top-headlines?country=jp&apiKey=ad9a3b9e852c4fbebb12f66e2adb2ee6";

		var response = await http.get(url);

		var jsonData = jsonDecode(response.body);

		if(jsonData['status'] == "ok") {
			jsonData["articles"].forEach((element) {
				if(element["urlToImage"] != null && element["description"] != null) {
					ArticleModel articleModel = ArticleModel(
						title: element['title'],
						author: element['author'],
						description: element['description'],
						url: element['url'],
						urlToImage: element['urlToImage'],
						publishedAt: DateTime.parse(element['publishedAt']),
						content: element['content']
					);
					news.add(articleModel);
					// print(articleModel.title);
					debugPrint(articleModel.title);
				}
			});
		}
	}
}
