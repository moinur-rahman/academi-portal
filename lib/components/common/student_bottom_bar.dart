import 'package:flutter/material.dart';

class StudentBottomBar extends StatefulWidget {

@override
State<StatefulWidget>createState(){
  return _StudentBottomBarState();
}
}
class _StudentBottomBarState extends State<StudentBottomBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF349053),
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Feed"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Teacher"),
        BottomNavigationBarItem(
            icon: Icon(Icons.doorbell_outlined), label: "Notfication"),
        BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded), label: "Result"),
      ],
    );
  }
}
