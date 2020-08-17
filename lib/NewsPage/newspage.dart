import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/NewsPage/article_model.dart';
import 'package:my_app/NewsPage/article_view.dart';
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
			) : Container(
				padding: EdgeInsets.symmetric(horizontal: 16),
				child: Column(
			  	children: [
			  		Text(
			  			'Headline News',
			  			style: TextStyle(
			  				fontWeight: FontWeight.bold,
			  				fontSize: 36
			  			),
			  		),
			  		Divider(),
			  		Expanded(
			  			child: ListView.builder(
								physics: ClampingScrollPhysics(),
			  		  	shrinkWrap: true,
			  		  	itemCount: articles.length,
			  		  	itemBuilder: (context, index) {
			  					return BlogTile(
			  						imageUrl: articles[index].urlToImage,
			  						title: articles[index].title,
			  						desc: articles[index].description,
										url: articles[index].url,
			  					);
			  		  	},
			  		  ),
			  		),
			  	],
			  ),
			),
      drawer: Menu(),
    );
  }
}

class BlogTile extends StatelessWidget  {
	
	final String imageUrl, title, desc, url;

	BlogTile({
		@required this.imageUrl,
		@required this.title,
		@required this.desc,
		@required this.url
	});

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: () {
				Navigator.push(context, MaterialPageRoute(
					builder: (context) => ArticleView(
						blogUrl: url,
					)
				));
			},
			child: Container(
		  	margin: EdgeInsets.only(bottom: 16),
		  	child: Column(
		  		children: <Widget>[
		  			ClipRRect(
		  				borderRadius: BorderRadius.circular(6),
		  				child: Image.network(imageUrl)
		  			),
		  			SizedBox(height: 8),
		  			Text(title, style: TextStyle(
		  				fontSize: 17,
		  				color: Colors.black87,
		  				fontWeight: FontWeight.w500
		  			),),
		  			SizedBox(height: 8),
		  			Text(desc, style:  TextStyle(
		  				color: Colors.black54
		  			),)
		  		],
		  	),
		  ),
		);
	}
}
