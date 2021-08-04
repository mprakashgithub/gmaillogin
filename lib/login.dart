import 'package:flutter/material.dart';
import 'package:gmaillogin/home_page.dart';
import 'package:gmaillogin/provider/google_signin_provider.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        child: Center(
          child: MaterialButton(
            color: Colors.white,
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.googleLogin();
            },
            child: Text("Login with Gmail"),
          ),
        ),
      ),
    );
  }
}
