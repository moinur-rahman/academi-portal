import 'package:flutter/material.dart';

import '../../api/shared_preferences.dart';
import '../../view/teacher_dashboard.dart';

import '../../models/teacher.dart';
import '../../graphql/Teacher/teacher_mutations.dart';

class InputSection extends StatefulWidget {
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
    return SizedBox(
      width: 340,
      height: 620,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your email',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) => {_email = value},
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Your name',
              prefixIcon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) => {_name = value},
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
            onChanged: (String value) => {_password = value},
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Repeat password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) => {_repeatPassword = value},
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone Number',
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) => {
              _phone = value,
            },
          ),
          SizedBox(
            width: 340,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Department",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                DropdownButton(
                  hint: Text("Select Department"),
                  items: _departmentList
                      .map<DropdownMenuItem<String>>((String department) {
                    return DropdownMenuItem<String>(
                      child: Text(department),
                      value: department,
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
            width: 200,
            height: 50,
            child: OutlinedButton(
              onPressed: _onSubmit,
              child: Text(
                "Create Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: BorderSide(color: Colors.green),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}
