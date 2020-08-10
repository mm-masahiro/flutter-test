import 'package:flutter/material.dart';
import 'package:my_app/card-origin.dart';

class  Assets extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Container(
				height: 150,
				child: CardOrigin(
					name: "Assets",
				),
			),
		);
	}
}
