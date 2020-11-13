



import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController getName=TextEditingController();
  String checkresult="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("New App"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getName,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){

                setState(() {
                  checkresult=getName.text;

                });
                print(checkresult);

              },
                color: Colors.amber,
                child: Text("DISPLAY"),
              ),
              Text(checkresult.toString(),
                  style:TextStyle(fontSize: 30.0),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
