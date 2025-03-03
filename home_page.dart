import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:parkit01/pages/settings_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
   
  final listPages = [
    Container(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text("Home Page"),
        ),
      ),
      body: listPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ]
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child:Center(
                child: Title(
                  color: Colors.white, 
                  child: Text(
                    'ParkIT',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          const Offset(0, 20),
                          const Offset(150, 20),
                          <Color>[
                            Colors.orange,
                            Colors.yellow,
                          ],
                        )
                    ),
                  ) 
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),

      ),
    );
  }
}