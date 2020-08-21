import 'package:flutter/material.dart';
import 'package:my_app/homepage.dart';

class ResultResister extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Container(
				child: FlatButton(
					color: Colors.red,
					onPressed: () {
						return Navigator.pop(context, MaterialPageRoute(
							builder: (context) {
								return HomePage();
							}
						));
					},
					child: Text('aa'),
				),
			),
		);
	}
}
