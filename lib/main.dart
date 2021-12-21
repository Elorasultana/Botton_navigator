import 'package:flutter/material.dart';

void main() {
  runApp(Morning());
}

class Morning extends StatefulWidget {
  @override
  State<Morning> createState() => _MorningState();
}

class _MorningState extends State<Morning> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 0,
          title: Text('I am appbar'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.sms), label: 'Message'),
          ],
          selectedItemColor: _selectedIndex == 0
              ? Colors.black
              : _selectedIndex == 1
                  ? Colors.black
                  : Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          iconSize: 30,
          elevation: 10,
        ),
        body: Container(),
      ),
    );
  }
}
