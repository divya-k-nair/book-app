import 'package:flutter/material.dart';

class Booklist extends StatefulWidget {


  @override
  _BooklistState createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  TextEditingController name=TextEditingController();
  TextEditingController cate=TextEditingController();
  TextEditingController auth=TextEditingController();
  TextEditingController price=TextEditingController();
  List bnames=[];
  List bcate=[];
  List bauth=[];
  List bprice=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("BOOK LIST"),
        ),
        body: SingleChildScrollView(
          child: Container (
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    TextField(
                      controller: name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.library_books,color: Colors.indigoAccent,size: 25,),
                        labelText: "Book name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    TextField(
                      controller: cate,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.library_books,color: Colors.indigoAccent,size: 25,),
                        labelText: "Category",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    TextField(
                      controller: auth,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box_sharp,color: Colors.indigoAccent,size: 25,),
                        labelText: "Author",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    TextField(
                      controller: price,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.attach_money,color: Colors.indigoAccent,size: 25,),
                        labelText: "Price",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    RaisedButton(
                      color: Colors.indigoAccent,
                      onPressed:(){
                      var getName=name.text;
                      var getCategory=cate.text;
                      var getAuthor=auth.text;
                      var getPrice=price.text;
                      print(getName);
                      print(getCategory);
                      print(getAuthor);
                      print(getPrice);
                      setState(() {
                        bnames.add(getName);
                        bcate.add(getCategory);
                        bauth.add(getAuthor);
                        bprice.add(getPrice);
                      });

                    },
                      child: Text("Add",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                    ),
                    ),
                    ListView.builder(
                      itemCount: bnames.length==null?0:bnames.length,
                      shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.lightGreen,

                            child: ListTile(
                              trailing: GestureDetector(
                                onTap: (){
                                  print("Delete clicked"+index.toString());
                                  setState(() {
                                    bnames.removeAt(index);
                                    bcate.removeAt(index);
                                    bauth.removeAt(index);
                                    bprice.removeAt(index);
                                  });
                                },
                                  child: Icon(Icons.delete,color: Colors.brown,size: 25,)),
                              title: Text(bnames[index]),
                              subtitle: Text("Category:"+bcate[index]+"\n"+"Author:"+bauth[index]+"\n"+"Price:"+bprice[index]),
                            ),
                          );
                        },)

                  ],//children
                ),
              ),
        ),

        ),


    );
  }
}
