import 'package:flutter/material.dart';
import 'package:my_app/NewsPage/article_model.dart';
import 'package:my_app/NewsPage/news.dart';
import 'package:my_app/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

	List<ArticleModel> articles = List<ArticleModel>();

	bool _loading = true;

  @override
	void initState() {
		super.initState();
		getNews();
	}

	getNews() async {
		News newsClass = News();
		await newsClass.getNews();
		articles = newsClass.news;
		setState(() {
		  _loading = false;
		});
	}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
        style: TextStyle(
          color: Colors.black
        ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: _loading ? Center(
				child: Container(
					child: CircularProgressIndicator(),
				),
      ) : Container(
				child: Column(
					children: <Widget>[
						Container(
							child: ListView.builder(
								itemCount: articles.length,
								shrinkWrap: true,
								itemBuilder: (context, index) {
									return BlogTile(
										imageUrl: articles[index].urlToImage,
										title: articles[index].title,
										desc: articles[index].description,
									);
								},
							),
						)
					],
				),
			),
      drawer: Menu(),
    );
  }
}

class BlogTile extends StatelessWidget  {
	
	final String imageUrl, title, desc;

	BlogTile({
		@required this.imageUrl,
		@required this.title,
		@required this.desc
	});

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Column(
				children: <Widget>[
					Image.network(imageUrl),
					Text(title),
					Text(desc)
				],
			),
		);
	}
}
