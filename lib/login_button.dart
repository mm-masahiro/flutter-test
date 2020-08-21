import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
	final Widget child;
	final Size size;

	TextFieldContainer({
		this.child,
		this.size
	});


	@override
	Widget build(BuildContext context) {
		Size size = MediaQuery.of(context).size;
		return Container(
			margin: EdgeInsets.symmetric(vertical: 20),
			padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
			width: size.width * 0.8,
			decoration: BoxDecoration(
				color: Colors.grey[300],
				borderRadius: BorderRadius.circular(30)
			),
			child: child,
		);
	}
}
