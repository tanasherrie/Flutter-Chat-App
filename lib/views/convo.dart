import 'package:chatapp/views/users.dart';
import 'package:chatapp/widgets/widget.dart';
import 'package:flutter/material.dart';

class PrivateDM extends StatefulWidget {
  @override
  _PrivateDMState createState() => _PrivateDMState();
}

class _PrivateDMState extends State<PrivateDM> {
  //AuthMethods authMethods = new AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/run away.jpg", height: 50),
        actions:[
          GestureDetector(
            onTap: (){
              /*authMethods.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => SignIn();
              ))*/
            },
            child:Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.exit_to_app),
            )
          )
        ]
      ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search) ,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => UserList()
            ));
          },
    ),
    );
  }
}
