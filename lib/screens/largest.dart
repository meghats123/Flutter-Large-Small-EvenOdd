import 'package:flutter/material.dart';
class Largest extends StatefulWidget {
  @override
  _CheckAppState createState() => _CheckAppState();
}

class _CheckAppState extends State<Largest> {
  TextEditingController getNumber1=TextEditingController();
  TextEditingController getNumber2=TextEditingController();
  TextEditingController getNumber3=TextEditingController();

  String result="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Largest Number"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getNumber1,
                decoration: InputDecoration(
                    hintText: "Enter number 1",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: getNumber2,
                decoration: InputDecoration(
                    hintText: "Enter number 2",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: getNumber3,
                decoration: InputDecoration(
                    hintText: "Enter number 3",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                int getNum1=int.parse(getNumber1.text);
                int getNum2=int.parse(getNumber2.text);
                int getNum3=int.parse(getNumber3.text);
                setState(() {
                  if((getNum1>getNum2)&&(getNum1>getNum3))
                  {
                    result="Number 1 is largest";
                  }
                  else if(getNum2>getNum3)
                  {
                    result="Number 2 is largest";
                  }
                  else
                  {
                    result="Number 3 is largest";
                  }
                });

              },
                child: Text("CHECK"),
                color: Colors.amber,
              ),
              Text(result,style: TextStyle(fontSize: 15.0),)
            ],
          ),
        ),
      ),
    );
  }
}
