// rename the file to main.dart
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
        appBar: AppBar(
          title: Center(child: Text("My App Bar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          ),
          ),
          backgroundColor: Colors.amber,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
          
        ),
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