import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:my_app/NewsPage/news.dart';


class ArticleView extends StatefulWidget {

	final String blogUrl;
	ArticleView({
		this.blogUrl
	});

	@override
	_ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

	final Completer<WebViewController> _completer = Completer<WebViewController>();

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
				backgroundColor: Colors.blue
			),
			body:  Container(
				height: MediaQuery.of(context).size.height,
				width: MediaQuery.of(context).size.width,
		  	child: WebView(
		  		initialUrl: widget.blogUrl,
		  		onWebViewCreated: ((WebViewController webViewController) {
		  			_completer.complete(webViewController);
		  		}),
		  	),
		  ),
		);
	}
}
