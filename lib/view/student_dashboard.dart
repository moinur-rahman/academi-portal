import 'package:flutter/material.dart';

import '../components/common/student_drawer.dart';
import '../components/StudentDashboard/most_important_data.dart';
import '../components/StudentDashboard/most_recent_data.dart';
import '../components/common/student_app_bar.dart';
import '../components/StudentDashboard/post_widget.dart';
import '../components/common/student_bottom_bar.dart';

class StudentDashboard extends StatefulWidget {
  static const routeName = '/student-dashboard';
  @override
  State<StatefulWidget> createState() {
    return _StudentDashboardState();
  }
}

class _StudentDashboardState extends State<StudentDashboard> {
  List<Map<String, String>> _data = most_important_data;
  bool _selectNavigation = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: StudentAppBar(),
      drawer: StudentDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 280,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: Icon(Icons.search),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF349053)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 130,
                            height: 35,
                            child: TextButton(
                              onPressed: () => setState(() {
                                _selectNavigation = true;
                                _data = most_important_data;
                              }),
                              child: Text(
                                "Most Important",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(
                            color: _selectNavigation
                                ? Colors.black
                                : Colors.grey[50],
                            thickness: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 105,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 105,
                            height: 35,
                            child: TextButton(
                              onPressed: () => setState(() {
                                _selectNavigation = false;
                                _data = most_recent_data;
                              }),
                              child: Text(
                                "Most Recent",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(
                            color: _selectNavigation
                                ? Colors.grey[50]
                                : Colors.black,
                            thickness: 3,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ..._data.map((element) {
                return PostWidget(
                  heading: element['heading']!,
                  createdAt: element['createdAt']!,
                  text: element['text']!,
                );
              }).toList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: StudentBottomBar(),
    );
  }
}
