import 'package:flutter/material.dart';

class DropdownSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DropdownState();
  }
}

class _DropdownState extends State<DropdownSection> {
    final List<String> _departments = const <String>['CSE', 'EEE'];
  String? _dropdownValue;
  Widget build(BuildContext context) {
    return DropdownButton(
        hint: Text("Select Department"),
        items: _departments.map<DropdownMenuItem<String>>((String department) {
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
        });
  }
}
