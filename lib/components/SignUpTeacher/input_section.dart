import 'package:flutter/material.dart';

import '../../api/shared_preferences.dart';
import '../../view/teacher_dashboard.dart';
import './input_field.dart';
import './dropdown_field.dart';
import './create_account_button.dart';

import '../../models/teacher.dart';
import '../../graphql/Teacher/teacher_mutations.dart';

class InputSection extends StatefulWidget {
  const InputSection({super.key});

  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<InputSection> {
  final List<String> _departmentList = const <String>[
    'CSE',
    'EEE',
    'ME',
    'Civil'
  ];

  String? _email, _name, _password, _repeatPassword, _department, _phone;

  final _textFormFieldHint = const <Map<String, dynamic>>[
    {
      'text': 'Enter your email',
      'icon': Icons.email,
    },
    {
      'text': 'Enter your name',
      'icon': Icons.person,
    },
    {
      'text': 'Enter your password',
      'icon': Icons.lock,
    },
    {
      'text': 'Repeat your password',
      'icon': Icons.lock,
    },
    {
      'text': 'Enter your phone',
      'icon': Icons.phone,
    }
  ];

  Future _onSubmit(BuildContext context) async {
    try {
      String status = await TeacherMutations().createTeacher(
        Teacher(
          email: _email,
          name: _name,
          password: _password,
          department: _department,
          phone: _phone,
        ),
      );

      if (!mounted) return;
      await Navigator.pushNamed(context, TeacherDashboard.routeName);
      await saveData("user", status);
    } catch (e) {
      showDialog<void>(
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

  void onInputFieldChange(String? value, String hint) {
    switch (hint) {
      case 'Enter your email':
        _email = value;
        break;
      case 'Enter your name':
        _name = value;
        break;
      case 'Enter your password':
        _password = value;
        break;
      case 'Repeat your password':
        _repeatPassword = value;
        break;
      case 'Enter your phone':
        _phone = value;
        break;
    }
  }

  void onDropDownChange(String? value) {
    setState(() {
      _department = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.85,
      height: height * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ..._textFormFieldHint.map((Map<String, dynamic> hint) {
            return InputField(
              text: hint['text'],
              icon: hint['icon'],
              onInputFieldChange: onInputFieldChange,
            );
          }),
          DropDownField(
            departmentList: _departmentList,
            department: _department,
            onDropDownChange: onDropDownChange,
          ),
          CreateAccountButton(onSubmit: () => _onSubmit(context)),
        ],
      ),
    );
  }
}
