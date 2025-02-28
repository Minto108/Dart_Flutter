//rename the file as main.dart
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 32,
              ),
          ),
        ),
      ),
    );
  }
}