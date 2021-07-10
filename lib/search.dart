import 'package:book_app/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Search extends StatelessWidget {
TextEditingController btitle=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("BOOK SEARCH"),
        ),
        body: SingleChildScrollView(
         child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: btitle,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.assignment,color: Colors.red,size: 40,),
                    hintText: "Book title",
                    labelText: "Book title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.pinkAccent,
                    onPressed: (){
                      var getBtitle=btitle.text;
                      print(getBtitle);

                    },
                    child: Text("SEARCH",
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
                    color: Colors.pinkAccent,
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Menu()));

                    },
                    child: Text("BACK TO MENU",
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
        ),

      ),
    );
  }
}
