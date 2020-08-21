import 'package:flutter/material.dart';
import 'package:my_app/login_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
	@override
  _LoginPage createState() => _LoginPage(); 
}

class _LoginPage extends State<LoginPage> {

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
							'LOG IN',
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
									loginUserEmail = value;
								});
							},
						),
					),
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
									loginUserPassword = value;
								});
							}
						),
					),
					Container(
						margin: EdgeInsets.symmetric(vertical: 50),
						width: MediaQuery.of(context).size.width * 0.8,
						height: 50,
						child: ClipRRect(
					  	borderRadius: BorderRadius.circular(30),
					  	child: RaisedButton(
					    	onPressed: () async {
					    		try {
					    			final FirebaseAuth auth = FirebaseAuth.instance;
					    			final AuthResult result = await auth.signInWithEmailAndPassword(email: loginUserEmail, password: loginUserPassword);
					    			final FirebaseUser user = result.user;
					    			setState(() {
					    				infoText = "OK:${user.email}";
					    			});
					    		} catch (e) {
					    			setState(() {
					    				infoText = "NG:${e.message}";
					    			});
					    		}
					    	},
					    	child: Text("Login"),
					    ),
					  ),
					),
				],
			),
		);
	}
}
