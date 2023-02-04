import 'package:flutter/material.dart';

import '../../view/student_dashboard.dart';
import './terms_conditions_section.dart';
import './Sign_Up_Alert.dart';

String createUser = """
  mutation CreateUser(
  \$email: String!
  \$name: String!
  \$password: String!
  \$ID: Int!
  \$department: String!
  \$section: String!
) {
  createUser(
    email: \$email
    name: \$name
    password: \$password
    ID: \$ID
    department: \$department
    section: \$section
  ) {
    email
  }
}
""";

class InputSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<InputSection> {
  final List<String> _departments = const <String>['CSE', 'EEE', 'ME', 'Civil'];
  final List<String> _section = const <String>['A', 'B', 'C'];
  String? _departmentValue, _sectionValue;

  Map<String?, dynamic> data = {
    "email": String,
    "name": String,
    "password": String,
    "repeatPassword": String,
    "ID": num,
    "department": String,
    "section": String,
  };

  void _updateValue(String name, var value) {
    setState(() {
      data[name] = value;
    });
  }

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
            onChanged: (value) {
              _updateValue("email", value);
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
            onChanged: (value) {
              _updateValue("name", value);
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
            onChanged: (value) {
              _updateValue("password", value);
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
            onChanged: (value) {
              _updateValue("repeatPassword", value);
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
            onChanged: (value) {
              _updateValue("ID", value);
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
                  items: _departments
                      .map<DropdownMenuItem<String>>((String department) {
                    return DropdownMenuItem<String>(
                      child: Text(department),
                      value: department,
                    );
                  }).toList(),
                  value: _departmentValue,
                  onChanged: (value) {
                    _updateValue("department", value);
                    _departmentValue = value;
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
                  items: _section
                      .map<DropdownMenuItem<String>>((String department) {
                    return DropdownMenuItem<String>(
                      child: Text(department),
                      value: department,
                    );
                  }).toList(),
                  value: _sectionValue,
                  onChanged: (value) {
                    _updateValue("section", value);
                    _sectionValue = value;
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
              onPressed: () {
                
                // Navigator.pushReplacementNamed(
                //   context,
                //   StudentDashboard.routeName,
                // )
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
