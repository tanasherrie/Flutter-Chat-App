import 'package:flutter/material.dart';

Widget mainAppBar(BuildContext context){
  return AppBar(
    leading: IconButton(icon: Icon(Icons.keyboard_backspace), onPressed: (){

    }),
    title: Text("Chatbox"),

    //Image.asset("assets/images/logo.png", height: 50),
  );
}

InputDecoration textField(String hintText){
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.white54,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      )
  );
}

TextStyle inputStyle(){
  return TextStyle(
    color: Colors.white,
    fontSize: 16
  );
}