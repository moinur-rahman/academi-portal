import 'package:academi_portal/models/student.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../view/student_dashboard.dart';
import './terms_conditions_section.dart';
import '../../graphql/student_request.dart';

class InputSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<InputSection> {
  final List<String> _departmentsList = const <String>[
    'CSE',
    'EEE',
    'ME',
    'Civil'
  ];
  final List<String> _sectionList = const <String>['A', 'B', 'C'];
  String? _email, _name, _password, _repeatPassword, _department, _section;
  int? _ID;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 650,
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
            onChanged: (String value) {
              _email = value;
            },
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
            onChanged: (String value) {
              _name = value;
            },
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
            onChanged: (String value) {
              _password = value;
            },
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
            onChanged: (String value) {
              _repeatPassword = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'ID (e.g. 1704037)',
              prefixIcon: Icon(
                Icons.wallet_membership,
                color: Colors.grey,
              ),
            ),
            keyboardType: TextInputType.name,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (value) {
              _ID = int.parse(value);
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
                  items: _departmentsList
                      .map<DropdownMenuItem<String>>((String department) {
                    return DropdownMenuItem<String>(
                      child: Text(department),
                      value: department,
                    );
                  }).toList(),
                  value: _department,
                  onChanged: (value) {
                    setState(() {
                      _department = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            width: 340,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Section",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                DropdownButton(
                  hint: Text("Select Section"),
                  items: _sectionList
                      .map<DropdownMenuItem<String>>((String department) {
                    return DropdownMenuItem<String>(
                      child: Text(department),
                      value: department,
                    );
                  }).toList(),
                  value: _section,
                  onChanged: (value) {
                    setState(() {
                      _section = value;
                    });
                  },
                ),
              ],
            ),
          ),
          TermsConditionsSection(),
          SizedBox(
            width: 200,
            height: 50,
            child: OutlinedButton(
              onPressed: () async {
                // String status = await StudentRequest().createUser(
                //   Student(
                //       email: _email,
                //       name: _name,
                //       password: _password,
                //       ID: _ID,
                //       department: _department,
                //       section: _section),
                // );
                // if (status == 'Success') {
                Navigator.pushNamed(context, StudentDashboard.routeName);
                // }
              },
              child: Text(
                "Create Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: BorderSide(
                    color: Colors.green,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}
