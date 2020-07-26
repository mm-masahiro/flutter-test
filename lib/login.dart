import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Mail Adress"),
                onChanged: (String value) {
                  setState(() {
                    newUserEmail = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    newUserPassword = value;
                  });
                },
              ),
              RaisedButton(
                onPressed: () async {
                  try {
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final AuthResult result = await auth.createUserWithEmailAndPassword(
                      email: newUserEmail,
                      password: newUserPassword
                    );

                    final FirebaseUser user = result.user;
                    setState(() {
                      infoText = 'OK:${user.email}';
                    });
                  } catch (e) {
                    setState(() {
                      infoText = 'NG:${e.message}';
                    });
                  }
                },
                child: Text('登録'),
              ),
              Container(height: 32),
              TextFormField(
                decoration: InputDecoration(labelText: "Mail Adress"),
                onChanged: (String value) {
                  setState(() {
                    loginUserEmail = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    loginUserPassword = value;
                  });
                },
              ),
              RaisedButton(
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
              Text(infoText)
            ],
          ),
        ),
      ),
    );
  } 
}