import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/TeacherList/teacher_data.dart';
import '../components/TeacherList/teacher_widget.dart';

class DeveloperNote extends StatefulWidget {
  static const routeName = '/teacher-list';

  @override
  State<StatefulWidget> createState() {
    return _DeveloperNoteState();
  }
}

class _DeveloperNoteState extends State<DeveloperNote> {
  List<Map<String, Object>> _data = courseTeacherData;
  bool _selectNavigation = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarWidget("Respective Teacher"),
        drawer: StudentDrawer(),
        bottomNavigationBar: StudentBottomBar(),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
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
                                  _data = courseTeacherData;
                                }),
                                child: Text(
                                  "Course Teacher",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
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
                                  _data = supervisorData;
                                }),
                                child: Text(
                                  "Supervisor",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
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
                  return TeacherWidget(
                    imageURL: element['imageURL'] as String,
                    name: element['name'] as String,
                    email: element['email'] as String,
                    courses: element['courses'] as List<String>,
                  );
                }).toList(),
              ],
            ),
          ),
        ));
  }
}
