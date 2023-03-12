import 'package:flutter/material.dart';

import '../../api/shared_preferences.dart';
import '../../view/teacher_dashboard.dart';

import '../../models/teacher.dart';
import '../../graphql/Teacher/teacher_mutations.dart';
import '../common/constant.dart';

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

  Future _onSubmit() async {
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
      width: width - 85,
      height: height * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ..._textFormFieldHint.map((Map<String, dynamic> hint) {
            return SizedBox(
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
                  labelText: hint['text'],
                  labelStyle: TextStyle(
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: Icon(
                    hint['icon'],
                    color: Colors.grey,
                    size: height * 0.027,
                  ),
                ),
                onChanged: ((String? value) {
                  switch (hint['text']) {
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
                }),
              ),
            );
          }),
          SizedBox(
            width: 340,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Department",
                  style: TextStyle(
                    fontSize: height * 0.02,
                  ),
                ),
                DropdownButton(
                  hint: Text(
                    "Select Department",
                    style: TextStyle(
                      fontSize: height * 0.02,
                    ),
                  ),
                  items: _departmentList
                      .map<DropdownMenuItem<String>>((String department) {
                    return DropdownMenuItem<String>(
                      value: department,
                      child: Text(
                        department,
                        style: TextStyle(
                          fontSize: height * 0.02,
                        ),
                      ),
                    );
                  }).toList(),
                  value: _department,
                  onChanged: (String? value) {
                    setState(() {
                      _department = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.45,
            height: height * 0.07,
            child: OutlinedButton(
              onPressed: _onSubmit,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.green),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                "Create Account",
                style: TextStyle(
                  fontSize: height * 0.022,
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
