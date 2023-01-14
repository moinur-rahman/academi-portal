import 'package:flutter/material.dart';

import './terms_conditions_section.dart';

class InputSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<InputSection> {
  final List<String> _departments = const <String>['CSE', 'EEE', 'ME', 'Civil'];
  String? _dropdownValue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 500,
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
                  value: _dropdownValue,
                  onChanged: (String? value) {
                    setState(() {
                      _dropdownValue = value;
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
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Create Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}
