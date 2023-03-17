import 'package:flutter/material.dart';

import '../../api/shared_preferences.dart';
import '../../view/teacher_dashboard.dart';

import '../../models/teacher.dart';
import '../../graphql/Teacher/teacher_mutations.dart';
import './create_account_button.dart';
import './input_field.dart';
import './dropdown_field.dart';

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
  final List<String> _sectionList = const <String>['A', 'B', 'C'];
  String? _email,
      _name,
      _password,
      _repeatPassword,
      _department,
      _phone,
      _section;

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
      'text': 'Enter your ID (e.g. 1704037)',
      'icon': Icons.wallet_membership,
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

  final _dropdownField = const <Map<String, dynamic>>[
    {
      'text': 'Department',
      'hint': 'Select Department',
      'list': ['CSE', 'EEE', 'ME', 'Civil'],
    },
    {
      'text': 'Section',
      'hint': 'Select Section',
      'list': ['A', 'B', 'C'],
    }
  ];

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

  void _onDropDownChange(String? value, String hint) {
    switch (hint) {
      case 'Department':
        setState(() {
          _department = value;
        });
        break;
      case 'Section':
        setState(() {
          _section = value;
        });
        break;
    }
  }

  Future _onSubmit(BuildContext context) async {
    String status = await TeacherMutations().createTeacher(
      Teacher(
        email: _email,
        name: _name,
        password: _password,
        department: _department,
        phone: _phone,
      ),
    );
    if (status != 'Failed') {
      await saveData("user", status);
      Navigator.pushNamed(context, TeacherDashboard.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.85,
      height: height * 0.82,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height * 0.55,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ..._textFormFieldHint.map((Map<String, dynamic> hint) {
                  return InputField(
                    label: hint['text'],
                    icon: hint['icon'],
                    onInputFieldChange: onInputFieldChange,
                  );
                }),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ..._dropdownField.map(
                  (Map<String, dynamic> hint) {
                    return DropDownField(
                      name: hint['text'],
                      value:
                          hint['text'] == 'Department' ? _department : _section,
                      hint: hint['hint'],
                      list: hint['list'],
                      onDropDownChange: (String? value) =>
                          _onDropDownChange(value, hint['text']),
                    );
                  },
                ),
              ],
            ),
          ),
          CreateAccountButton(onSubmit: () => _onSubmit(context)),
        ],
      ),
    );
  }
}
