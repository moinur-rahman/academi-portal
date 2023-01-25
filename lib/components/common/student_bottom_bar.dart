import 'package:flutter/material.dart';

import '../../view/teacher_list.dart';
import '../../view/student_dashboard.dart';

class StudentBottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentBottomBarState();
  }
}

class _StudentBottomBarState extends State<StudentBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(context, StudentDashboard.routeName),
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
            ),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home),
                  Text("Home"),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(context, TeacherList.routeName),
            },
            style: TextButton.styleFrom(foregroundColor: Colors.grey),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  Text("Teacher"),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () => {},
            style: TextButton.styleFrom(foregroundColor: Colors.grey),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.doorbell_outlined),
                  Text("Notification"),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () => {},
            style: TextButton.styleFrom(foregroundColor: Colors.grey),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.list_alt_rounded),
                  Text("Result"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class _StudentBottomBarState extends State<StudentBottomBar> {
//   int _selectedIndex = 0;
  
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       selectedItemColor: Color(0xFF349053),
//       currentIndex: _selectedIndex,
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Feed"),
//         BottomNavigationBarItem(icon: Icon(Icons.person), label: "Teacher"),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.doorbell_outlined), label: "Notfication"),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.list_alt_rounded), label: "Result"),
//       ],
//     );
//   }
// }
