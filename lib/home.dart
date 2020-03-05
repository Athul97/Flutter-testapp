import 'package:flutter/material.dart';
import 'package:test_app/buttonpage.dart';
import 'package:test_app/buttonpage2.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Buttoncolor(),
    Buttonpage2(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    print(_selectedIndex);
    return Scaffold(

      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.comment),
            title: new Text('Case1'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.comment),
            title: new Text('Case2'),
          ),
        ],
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        backgroundColor: Colors.lightBlueAccent,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}