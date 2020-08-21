import 'package:flutter/material.dart';
import 'package:my_app/login_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/result_resister.dart';

class AddUser extends StatefulWidget {
	@override
  _AddUser createState() => _AddUser(); 
}

class _AddUser extends State<AddUser> {

  String newUserEmail = "";
  String newUserPassword = "";
  String loginUserEmail = "";
  String loginUserPassword = "";
  String infoText = "";

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.indigo[100],
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
							'新規登録',
							style: TextStyle(
								fontSize: 20,
								fontWeight: FontWeight.bold
							),
						)
					),
					TextFieldContainer(
						child: TextField(
							decoration: InputDecoration(
								icon: Icon(Icons.person, color: Colors.grey,),
								hintText: 'Your Email Adress',
								border: InputBorder.none
							),
							onChanged: (String value) {
								setState(() {
									newUserEmail = value;
								});
							},
						),
					),
					Column(
						children: [
							 TextFieldContainer(
								child: TextField(
									obscureText: true,
									decoration: InputDecoration(
										hintText: 'Password',
										icon: Icon(Icons.lock, color: Colors.grey,),
										suffixIcon: Icon(Icons.visibility, color: Colors.grey,),
										border: InputBorder.none
									),
									onChanged: (String value) {
										setState(() {
											newUserPassword = value;
										});
									}
								),
							),
							Text('6文字以上の英数字で設定して下さい')
						]
					),
					Container(
						margin: EdgeInsets.symmetric(vertical: 50),
						width: MediaQuery.of(context).size.width * 0.8,
						height: 50,
						child: ClipRRect(
					  	borderRadius: BorderRadius.circular(30),
					  	child: RaisedButton(
					    	onPressed: () async {
					    		// try {
					    		// 	final FirebaseAuth auth = FirebaseAuth.instance;
					    		// 	final AuthResult result = await auth.createUserWithEmailAndPassword(email: newUserEmail, password: newUserPassword);
					    		// 	final FirebaseUser user = result.user;
					    		// 	setState(() {
					    		// 		infoText = "OK:${user.email}";
					    		// 	});
					    		// } catch (e) {
					    		// 	setState(() {
					    		// 		infoText = "NG:${e.message}";
					    		// 	});
					    		// }
									return Navigator.push(context, MaterialPageRoute(
										builder: (context) {
											return ResultResister();
										}
									));
					    	},
					    	child: Text("新規登録"),
					    ),
					  ),
					),
				],
			),
		);
	}
}
