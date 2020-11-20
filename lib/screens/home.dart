
import 'package:flutter/material.dart';
import 'package:large_small_even_odd/screens/evenorodd.dart';
import 'package:large_small_even_odd/screens/largest.dart';
import 'package:large_small_even_odd/screens/smallest.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Largest()));

          },
            child: Text("Find Largest"),
            color: Colors.amber,
          ),
          SizedBox(height: 10.0,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Smallest()));

          },
            child: Text("Find Smallest"),
            color: Colors.amber,
          ),
          SizedBox(height: 10.0,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>EvenOdd()));
          },
            child: Text("Check Even Or Odd"),
            color: Colors.amber,
          ),
          SizedBox(height: 10.0,),

        ],
      ),
    );
  }
}
