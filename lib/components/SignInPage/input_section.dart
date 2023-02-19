import 'dart:convert';

import 'package:flutter/material.dart';

import '../../view/student_dashboard.dart';
import '../../view/teacher_dashboard.dart';
import '../../api/shared_preferences.dart';

import '../../graphql/Teacher/teacher_mutations.dart';
import '../../graphql/Student/student_mutations.dart';
import '../../models/teacher.dart';
import '../../models/student.dart';

class InputSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

enum UserType { Teacher, Student }

class _InputSectionState extends State<InputSection> {
  String? _email, _password;

  UserType? _role = UserType.Student;

  bool isChecked = false;

  Future _onSubmit() async {
    if (_role == UserType.Student) {
      String status = await StudentMutations().studentLogin(Student(
        email: _email,
        password: _password,
      ));
      if (status != 'Failed')
        Navigator.pushNamed(context, StudentDashboard.routeName);
    } else if (_role == UserType.Teacher) {
      String status = await TeacherMutations().teacherLogin(Teacher(
        email: _email,
        password: _password,
      ));

      if (status != 'Failed') {
        saveData("user", status);
        Navigator.pushNamed(context, TeacherDashboard.routeName);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 480,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 200,
            height: 150,
            child: Column(
              children: [
                ListTile(
                  title: Text("Student"),
                  leading: Radio(
                    value: UserType.Student,
                    groupValue: _role,
                    onChanged: ((UserType? value) {
                      setState(() {
                        _role = value;
                      });
                    }),
                  ),
                ),
                ListTile(
                  title: Text("Teacher"),
                  leading: Radio(
                    value: UserType.Teacher,
                    groupValue: _role,
                    onChanged: ((UserType? value) {
                      setState(() {
                        _role = value;
                      });
                    }),
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your email',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
            ),
            onChanged: ((String? value) {
              _email = value;
            }),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
            ),
            onChanged: ((String? value) {
              _password = value;
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.all(Colors.green),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Text(
                    "Remember Password",
                    style: TextStyle(
                      color: Color(0xff6B6B6B),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              // Text(
              //   "Forgot Password",
              //   style: TextStyle(
              //     color: Color(0xff6B6B6B),
              //     fontSize: 15,
              //   ),
              // ),
            ],
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: OutlinedButton(
              onPressed: _onSubmit,
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: BorderSide(
                    color: Colors.green,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
