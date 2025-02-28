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
        body: ListView( //vertical columns
        scrollDirection: Axis.horizontal, // to control the scroll direction 
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.deepPurple[400],
            ),
            Container(
              width: 400,
              height: 400,
              color: Colors.deepPurple[200],
            ),
            Container(
              width: 400,
              height: 400,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}