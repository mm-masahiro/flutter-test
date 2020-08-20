import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/add_user.dart';
import 'package:my_app/login_page.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login(); 
}

class _Login extends State<Login> {

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
          'Login',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
				// mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					SizedBox(
						height: 20,
					),
					Padding(
						padding: EdgeInsets.symmetric(horizontal: 20),
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Text(
									"aa",
									style: TextStyle(
										color: Colors.white,
										fontWeight: FontWeight.bold,
										fontSize: 30
									),
								)
							],
						),
					),
					Center(
						child: Container(
							margin: EdgeInsets.symmetric(vertical: 20),
					  	width: MediaQuery.of(context).size.width * 0.8,
					  	child: ClipRRect(
					  		borderRadius: BorderRadius.circular(30),
					  		child: FlatButton(
					  	  	color: Colors.blue[300],
					  			padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
					  			onPressed: () {
										Navigator.push(context, MaterialPageRoute(
											builder: (context) {
												return LoginPage();
											}
										));
					  			},
					  			child: Text(
					  				'LOGIN',
					  				style: TextStyle(
					  					color: Colors.white
					  				),
					  	  	),
					    	),
					  	),
					  ),
					),
					Center(
						child: Container(
							margin: EdgeInsets.symmetric(vertical: 20),
					  	width: MediaQuery.of(context).size.width * 0.8,
					  	child: ClipRRect(
					  		borderRadius: BorderRadius.circular(30),
					  		child: FlatButton(
					  	  	color: Colors.grey[300],
					  			padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
					  			onPressed: () {
										Navigator.push(context, MaterialPageRoute(
											builder: (context) {
												return AddUser();
											}
										));
					  			},
					  			child: Text(
					  				'LOGIN',
					  				style: TextStyle(
					  					color: Colors.black
					  				),
					  	  	),
					    	),
					  	),
					  ),
					)
				]
			)



      // body: Center(
      //   child: Container(
			// 		decoration: BoxDecoration(
			// 			image: DecorationImage(
			// 				image: AssetImage('assets/img/WallStreet.jpg'),
			// 				fit: BoxFit.cover
			// 			),
			// 		),
      //     padding: EdgeInsets.all(32),
      //     child: ListView(
      //       children: <Widget>[
      //         TextFormField(
			// 					style: TextStyle(
			// 						color: Colors.white
			// 					),
      //           decoration: InputDecoration(
			// 						labelText: "Mail Adress",
			// 						labelStyle: TextStyle(
			// 							color: Colors.red
			// 						)
			// 					),
      //           onChanged: (String value) {
      //             setState(() {
      //               newUserEmail = value;
      //             });
      //           },
      //         ),
      //         TextFormField(
			// 					style: TextStyle(
			// 						color: Colors.white
			// 					),
      //           decoration: InputDecoration(
			// 						labelText: 'Password',
			// 						labelStyle: TextStyle(
			// 							color: Colors.red
			// 						)
			// 					),
      //           obscureText: true,
      //           onChanged: (String value) {
      //             setState(() {
      //               newUserPassword = value;
      //             });
      //           },
      //         ),
      //         RaisedButton(
      //           onPressed: () async {
      //             try {
      //               final FirebaseAuth auth = FirebaseAuth.instance;
      //               final AuthResult result = await auth.createUserWithEmailAndPassword(
      //                 email: newUserEmail,
      //                 password: newUserPassword
      //               );

      //               final FirebaseUser user = result.user;
      //               setState(() {
      //                 infoText = 'OK:${user.email}';
      //               });
      //             } catch (e) {
      //               setState(() {
      //                 infoText = 'NG:${e.message}';
      //               });
      //             }
      //           },
      //           child: Text('登録'),
      //         ),
      //         Container(height: 32),
      //         TextFormField(
      //           decoration: InputDecoration(labelText: "Mail Adress"),
      //           onChanged: (String value) {
      //             setState(() {
      //               loginUserEmail = value;
      //             });
      //           },
      //         ),
      //         TextFormField(
      //           decoration: InputDecoration(labelText: "Password"),
      //           obscureText: true,
      //           onChanged: (String value) {
      //             setState(() {
      //               loginUserPassword = value;
      //             });
      //           },
      //         ),
              // RaisedButton(
              //   onPressed: () async {
              //     try {
              //       final FirebaseAuth auth = FirebaseAuth.instance;
              //       final AuthResult result = await auth.signInWithEmailAndPassword(email: loginUserEmail, password: loginUserPassword);
              //       final FirebaseUser user = result.user;
              //       setState(() {
              //         infoText = "OK:${user.email}";
              //       });
              //     } catch (e) {
              //       setState(() {
              //         infoText = "NG:${e.message}";
              //       });
              //     }
              //   },
              //   child: Text("Login"),
              // ),
          //     Text(infoText)
          //   ],
          // ),
      //   ),
      // ),
    );
  } 
}
