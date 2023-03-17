import 'package:flutter/material.dart';

import '../../view/student_dashboard.dart';
import '../../view/teacher_dashboard.dart';
import '../../api/shared_preferences.dart';
import './radio_button.dart';
import './input_field.dart';
import './sing_in_button.dart';

import '../../graphql/Teacher/teacher_mutations.dart';
import '../../graphql/Student/student_mutations.dart';
import '../../models/teacher.dart';
import '../../models/student.dart';
import './forgot_password.dart';
import './remember_password.dart';

class InputSection extends StatefulWidget {
  const InputSection({super.key});

  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

enum UserType {
  Student,
  Teacher,
}

class _InputSectionState extends State<InputSection> {
  String? _email, _password;

  UserType? _role = UserType.Student;

  bool isChecked = false;

  final _textFormFieldHint = const <Map<String, dynamic>>[
    {
      'text': 'Enter your email',
      'icon': Icons.email,
    },
    {
      'text': 'Enter your password',
      'icon': Icons.lock,
    },
  ];

  void _onRadioChange(UserType? value) {
    setState(() {
      _role = value;
    });
  }

  void onInputFieldChange(String? value, String hint) {
    switch (hint) {
      case 'Enter your email':
        _email = value;
        break;
      case 'Enter your password':
        _password = value;
        break;
    }
  }

  void _onRememberMeChange(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

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
                ...UserType.values.map((UserType role) {
                  return RadioButton(
                    role: _role,
                    value: role,
                    onRadioChange: _onRadioChange,
                  );
                }).toList(),
              ],
            ),
          ),
          ..._textFormFieldHint.map((Map<String, dynamic> hint) {
            return InputField(
              label: hint['text'],
              icon: hint['icon'],
              onInputFieldChange: onInputFieldChange,
            );
          }).toList(),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RememberPassword(
                  isChecked: isChecked,
                  onCheckBoxChange: _onRememberMeChange,
                ),
                ForgotPassword(),
              ],
            ),
          ),
          SingInButton(onSubmit: () async => await _onSubmit(context)),
        ],
      ),
    );
  }
}
