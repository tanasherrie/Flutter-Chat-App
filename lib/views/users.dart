import 'package:chatapp/widgets/widget.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  //TextEditingController searchTextEditingController = new TextEditingController();

  //create chatroom, direct to convo screen
  createDM(){

  }

  /*
  Widget searchList(){
    return ListView.builder(
      itemCount: ,
        itemBuilder: (context, index){
          return SearchTile(
            userName: "",
            userEmail: ""
          )
        });
    )
  }*/

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
                          hintText: "Search username",
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
                      borderRadius: BorderRadius.circular(40)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Image.asset("")
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

class SearchTile extends StatelessWidget {
  final String userName;
  final String userEmail;
  SearchTile({this.userName, this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName, style: inputStyle(),),
              Text(userEmail, style: inputStyle(),)
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: (){

            },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text("Message")
              )
          )
        ]
      )
    );
  }
}

