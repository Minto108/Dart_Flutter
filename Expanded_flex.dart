// rename as main.dart to run
//Expanded Widget and flex

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
        body: Column( //vertical columns
          children: [
            Expanded(
              child: Container(
                color: Colors.deepPurple[400],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.deepPurple[200],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
              ),
            )
          ],
        ),
      ),
    );
  }
}