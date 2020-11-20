

import 'package:flutter/material.dart';
import 'package:large_small_even_odd/screens/home.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("NEW APP"),
          backgroundColor: Colors.amber,
        ),
        body: Home(),
      ),
    );
  }
}
