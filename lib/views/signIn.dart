import 'package:chatapp/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: mainAppBar(context),*/
      body: SingleChildScrollView(
        child:Container(
            margin: EdgeInsets.fromLTRB(0,100,0,0),
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
            Text("ChatBox",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
            TextField(
              style: TextStyle(),
              decoration: textField("Email"),
            ),
            TextField(
              style: TextStyle(),
              decoration: textField("Password"),
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              margin: EdgeInsets.fromLTRB(10,10,10,10),
              child: Text("Forgot Password?", style: inputStyle())
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    const Color(0xff007EF4),
                    const Color(0xff2A75BC)
                  ]
                ),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Text("Sign In", style: inputStyle()),
            ),
            SizedBox(height:16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Don't have an account? ", style: inputStyle()),
                Text("Register now", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.underline
                ))
              ]
            ),
            SizedBox(height: 150),
          ],
        )
      ),
      )
    );
  }
}

