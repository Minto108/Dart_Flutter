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
        backgroundColor: Colors.white,
        body: Row( //vertical columns
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[400],
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.deepPurple[200],
            ),
            Container(
              width: 20,
              height: 20,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}