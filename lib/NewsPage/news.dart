import 'dart:convert';
import 'package:my_app/NewsPage/article_model.dart';
import 'package:http/http.dart' as http;

class News {

	List<ArticleModel> news = []..length = 10;

	Future<void> getNews() async {
		String url = "http://newsapi.org/v2/everything?domains=wsj.com&apiKey=ad9a3b9e852c4fbebb12f66e2adb2ee6";

		var response = await http.get(url);

		var jsonData = jsonDecode(response.body);

		if(jsonData['status'] == "ok") {
			jsonData["articles"].forEach((element) {
				if(element['urlToImage'] != null && element['description'] != null) {
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
				}
			});
		}
	}
}
