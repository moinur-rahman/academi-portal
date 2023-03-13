import 'package:flutter/material.dart';

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
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.85,
      height: height * 0.52,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.3,
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: height * 0.0012,
                        child: Radio(
                          activeColor: const Color(0xff349053),
                          value: UserType.Student,
                          groupValue: _role,
                          onChanged: ((UserType? value) {
                            setState(() {
                              _role = value;
                            });
                          }),
                        ),
                      ),
                      Text(
                        "Student",
                        style: TextStyle(
                          fontSize: height * 0.02,
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
                  width: width * 0.4,
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: height * 0.0012,
                        child: Radio(
                          activeColor: Colors.green,
                          value: UserType.Teacher,
                          groupValue: _role,
                          onChanged: ((UserType? value) {
                            setState(() {
                              _role = value;
                            });
                          }),
                        ),
                      ),
                      Text(
                        "Teacher",
                        style: TextStyle(
                          fontSize: height * 0.02,
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
          SizedBox(
            height: height * 0.07,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                ),
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.grey,
                    width: 1.5,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.green,
                    width: 2,
                  ),
                ),
                floatingLabelStyle: const TextStyle(
                  color: AppColors.green,
                ),
                labelText: 'Enter your email',
                labelStyle: TextStyle(
                  fontSize: height * 0.02,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey,
                  size: height * 0.027,
                ),
              ),
              onChanged: ((String? value) {
                _email = value;
              }),
            ),
          ),
          SizedBox(
            height: height * 0.07,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                ),
                border: const OutlineInputBorder(),
                labelText: 'Enter your password',
                labelStyle: TextStyle(
                  fontSize: height * 0.02,
                  fontWeight: FontWeight.w500,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.grey,
                    width: 1.5,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.green,
                    width: 2,
                  ),
                ),
                floatingLabelStyle: const TextStyle(
                  color: AppColors.green,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: height * 0.027,
                ),
              ),
              onChanged: ((String? value) {
                _password = value;
              }),
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: height * 0.0012,
                      child: Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.green),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      "Remember Password",
                      style: TextStyle(
                        fontSize: height * 0.018,
                        fontWeight: FontWeight.w500,
                        color: isChecked ? AppColors.green : AppColors.grey,
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: height * 0.018,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.5,
            height: height * 0.07,
            child: OutlinedButton(
              onPressed: () async => await _onSubmit(context),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                side: const BorderSide(
                  color: Colors.green,
                  width: 1.5,
                ),
              ),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: height * 0.027,
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
