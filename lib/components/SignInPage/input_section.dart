import 'package:flutter/material.dart';
import 'dart:math';

import '../../view/student_dashboard.dart';
import '../../view/teacher_dashboard.dart';
import '../../api/shared_preferences.dart';

import '../../components/common/constant.dart';
import '../../graphql/Teacher/teacher_mutations.dart';
import '../../graphql/Student/student_mutations.dart';
import '../../models/teacher.dart';
import '../../models/student.dart';

class InputSection extends StatefulWidget {
  const InputSection({super.key});

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

  Future<void> _onSubmit(BuildContext context) async {
    try {
      if (_role == UserType.Student) {
        String status = await StudentMutations().studentLogin(Student(
          email: _email,
          password: _password,
        ));

        if (mounted) {
          await Navigator.pushNamed(context, StudentDashboard.routeName);
          await saveData("user", status);
        }
      } else if (_role == UserType.Teacher) {
        String status = await TeacherMutations().teacherLogin(Teacher(
          email: _email,
          password: _password,
        ));

        if (status != 'Failed') {
          if (!mounted) return;
          Navigator.pushNamed(context, TeacherDashboard.routeName);
          await saveData("user", status);
        }
      }
    } catch (e) {
      return showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Error"),
              content: const SizedBox(
                width: 200,
                height: 50,
                child: Text("Invalid email or password"),
              ),
              actions: [
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = min(MediaQuery.of(context).size.width, 400);
    return SizedBox(
      width: width,
      height: 420,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 250,
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                  child: Row(
                    children: [
                      Radio(
                        activeColor: const Color(0xff349053),
                        value: UserType.Student,
                        groupValue: _role,
                        onChanged: ((UserType? value) {
                          setState(() {
                            _role = value;
                          });
                        }),
                      ),
                      Text(
                        "Student",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: (_role == UserType.Student)
                              ? AppColors.green
                              : AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: Row(
                    children: [
                      Radio(
                        activeColor: Colors.green,
                        value: UserType.Teacher,
                        groupValue: _role,
                        onChanged: ((UserType? value) {
                          setState(() {
                            _role = value;
                          });
                        }),
                      ),
                      Text(
                        "Teacher",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: (_role == UserType.Teacher)
                              ? AppColors.green
                              : AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.green,
                  width: 2,
                ),
              ),
              floatingLabelStyle: TextStyle(
                color: AppColors.green,
              ),
              labelText: 'Enter your email',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
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
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.green,
                  width: 2,
                ),
              ),
              floatingLabelStyle: TextStyle(
                color: AppColors.green,
              ),
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
                    },
                  ),
                  Text(
                    "Remember Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isChecked ? AppColors.green : AppColors.grey,
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: AppColors.green,
                      fontSize: 15,
                    ),
                  )),
            ],
          ),
          SizedBox(
            width: width / 2,
            height: 50,
            child: OutlinedButton(
              onPressed: () async => await _onSubmit(context),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                side: const BorderSide(
                  color: Colors.green,
                ),
              ),
              child: const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
