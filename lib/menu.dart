import 'package:book_app/entry.dart';
import 'package:book_app/search.dart';
import 'package:book_app/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Entry()));

              },
                child: Text("BOOK ENTRY",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
              ),

              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Search()));
              },
                child: Text("BOOK SEARCH",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),

              ),
            ),
            SizedBox(height:20 ,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>View()));

              },
                child: Text("VIEW",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
              ),
            ),
            ),
          ],//children
        ),
      ),
    );
  }
}
