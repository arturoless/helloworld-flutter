import 'package:flutter/material.dart';

import 'card_example.dart';
import 'full_image.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    new ExampleCard(),
    new FullImage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            title: Text('Movies'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            title: Text("Today's Poster"),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[700],
        onTap: _onItemTapped,
      ),
    );
  }
}