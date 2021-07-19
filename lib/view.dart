import 'package:flutter/material.dart';

class View extends StatelessWidget {
  var books=["Randamoozham","Asuravithu","God of small things","Harry potter","2 states","Five point someone","Revolution 2020","One night @callcenter","Balyakalasakhi","Mayyazhipuzhayude theerangalil"];
  var category=["Mythology","Fiction","Fiction","Fantasy","Fiction","Fiction","Romance","Fiction","Romance","Fiction"];
  var author=["M D Vasudevan nair","M D Vasudevan nair","Arundhati roy","J K Rowling","Chetan bhagat","Chetan bhagat","Chetan bhagat","Chetan bhagat","Basheer","M Mukundan"];
  var  price=["200","250","150","200","150","180","200","230","250","300"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("BOOK VIEW"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: books.length,
              itemBuilder:(context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.article,color: Colors.indigoAccent,size: 25,),
                    title:Text(books[index]) ,
                    subtitle:Text("Category:"+category[index]+"\n"+"Author:"+author[index]+"\n"+"Price:"+price[index]),
                  ),
                );
              }, //item builder
          ),
        ),
      ),
    );
  }
}
