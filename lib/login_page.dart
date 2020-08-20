import 'package:flutter/material.dart';
import 'package:my_app/login_button.dart';

class LoginPage extends StatefulWidget {
	@override
  _LoginPage createState() => _LoginPage(); 
}

class _LoginPage extends State<LoginPage> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text(
					'AA',
					style: TextStyle(
						color: Colors.white
					),
				),
				backgroundColor: Colors.blue,
			),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: [
					Center(
						child: Text(
							'LOG IN',
							style: TextStyle(
								fontWeight: FontWeight.bold
							),
						)
					),
					TextFieldContainer(
						child: TextField(
							decoration: InputDecoration(
								icon: Icon(Icons.person)
							),
						),
					)
				],
			),
		);
	}
}
