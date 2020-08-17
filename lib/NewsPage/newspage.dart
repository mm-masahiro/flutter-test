import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/NewsPage/article_model.dart';
import 'package:my_app/NewsPage/news.dart';
import 'package:my_app/drawer.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

	List<ArticleModel> articles = new List<ArticleModel>();
	
	bool loadingInProgress;
	var newslist;
	News newsClass = News();

	// void getNews() async {
	// 	// News newsClass = News();
	// 	await newsClass.getNews();
	// 	setState(() {
	// 		loadingInProgress = false;
	// 		newslist = newsClass.news;
	// 	});
	// }

  @override

	void initState() {
		loadingInProgress = true;
		super.initState();
		getNews();
	}

	void getNews() async {
		News newsClass = News();
		await newsClass.getNews();
		articles = newsClass.news;
		setState(() {
		  // _loading = false;
			loadingInProgress = false;
		});
	}

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
      body: loadingInProgress ? Center(
				child: Container(
					child: CircularProgressIndicator(),
				),
			) : Column(
				children: [
					Text(
						'Wall Street News',
						style: TextStyle(
							fontWeight: FontWeight.bold,
							fontSize: 36
						),
					),
					Divider(),
					Expanded(
						child: ListView.builder(
					  	shrinkWrap: true,
					  	itemCount: articles.length,
							// itemCount: 10,
					  	itemBuilder: (context, index) {
					  		// return Text(index.toString());
					  		// return ListTile(
					  		// 	title: Text(articles[index].title),
								// 	leading: Image.network(articles[index].urlToImage),
					  		// );
								// return FlatButton(
								// 	onPressed: () {
								// 		debugDumpApp();
								// 	},
								// 	child: Text(articles[index].title),
								// );
								return BlogTile(
									imageUrl: articles[index].urlToImage,
									title: articles[index].title,
									desc: articles[index].description,
								);
					  	},
					  ),
					),
				],
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
