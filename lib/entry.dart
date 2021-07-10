import 'package:book_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Entry extends StatelessWidget {
  TextEditingController btitle=TextEditingController();
  TextEditingController bauth=TextEditingController();
  TextEditingController bdis=TextEditingController();
  TextEditingController bpub=TextEditingController();
  TextEditingController bprice=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("ENTRY APP"),
        ),
        body:SingleChildScrollView(
        child:  Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: btitle,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward,color: Colors.red,size: 40,),
                      hintText: "Book title",
                      labelText: "Book title",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: bauth,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.assignment_ind,color: Colors.teal,size: 40,),
                      hintText: "Author",
                      labelText: "Author",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: bdis,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.assignment,color: Colors.lightBlue,size: 40,),
                      hintText: "Distributor",
                      labelText: "Distributor",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: bpub,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.accessibility,color: Colors.brown,size: 40,),
                      hintText: "Publisher",
                      labelText: "Publisher",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: bprice,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.attach_money,color: Colors.orange,size: 40,),
                      hintText: "Price",
                      labelText: "Price",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.tealAccent,
                      onPressed:(){
                        var getBtitle=btitle.text;
                        var getBauth=bauth.text;
                        var getBdis=bdis.text;
                        var getBpub=bpub.text;
                        var getBprice=bprice.text;
                        print(getBtitle);
                        print(getBauth);
                        print(getBdis);
                        print(getBpub);
                        print(getBprice);


                      },
                      child: Text("SUBMIT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    )

                ),
                SizedBox(height: 20,),
                SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.tealAccent,
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));


                      },
                      child: Text("BACK TO MENU",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    )

                ),

              ],//children
            ),
          ),
        ),


          ),


    );
  }
}
