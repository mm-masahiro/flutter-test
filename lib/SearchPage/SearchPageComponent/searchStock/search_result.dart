import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {

	final String text;

	SearchResult({Key key, @required this.text}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text(
					"Search Result",
					style: TextStyle(
						color: Colors.white
					),
				),
				backgroundColor: Colors.blue,
			),
			body: Column(
				children: <Widget>[
					Text("$text"),
					RaisedButton(
						onPressed: () => Navigator.pop(context),
						child: Text("Return"),
					)
				],
			),
		);
	}
}
