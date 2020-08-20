import 'package:flutter/material.dart';
import 'package:my_app/login_button.dart';

class AddUser extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('AAAAAAA'),
				backgroundColor: Colors.blue,
			),
			body: Column(
				children: [
					Expanded(
						child: Opacity(
							opacity: 0.3,
							child: Container(
								decoration: BoxDecoration(
									image: DecorationImage(
										image: AssetImage('assets/img/WallStreet.jpg'),
										fit: BoxFit.cover
									)
								),
								child: TextFieldContainer(
									size: MediaQuery.of(context).size * 0.8,
								),
					  	),
						),
					),
				],
			),
		);
	}
}
