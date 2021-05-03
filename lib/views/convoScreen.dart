import 'package:chatapp/widgets/widget.dart';
import 'package:flutter/material.dart';

class ConvoScreen extends StatefulWidget {
  @override
  _ConvoScreenState createState() => _ConvoScreenState();
}

class _ConvoScreenState extends State<ConvoScreen> {
  Widget MessageList(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context),
      body: Container(
        child: Column(
          children: [
            Container(
                color: Color(0x54FFFFFF),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                            //controller: searchTextEditingController,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Search username...",
                                  hintStyle: TextStyle(
                                      color: Colors.white54
                                  ),
                                  border: InputBorder.none
                              )
                          )
                      ),
                      GestureDetector(
                          onTap:(){
                            //initiateSearch();
                          },
                          /*search button*/
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        const Color(0x36FFFFFF),
                                        const Color(0x0FFFFFF)
                                      ]
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              padding: EdgeInsets.all(12),
                              child:IconButton(icon: Icon(Icons.search), onPressed: (){

                              }),
                              //child: Image.asset("assets/images/search.png")
                          )
                      ),
                    ]
                )
            )
          ],
        )
      )
    );
  }
}


