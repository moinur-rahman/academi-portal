import 'package:flutter/material.dart';

class DropdownButtonSingle extends StatefulWidget {
  final String dropdownName;

  DropdownButtonSingle(this.dropdownName);

  @override
  State<StatefulWidget> createState() {
    return _DropdownButtonSingleState();
  }
}

class _DropdownButtonSingleState extends State<DropdownButtonSingle> {
  final List<String> _departments = const <String>['CSE', 'EEE', 'ME', 'Civil'];
  String? _dropdownValue;

  final _dropdownName = const {
    'Department': ['CSE', 'EEE', 'ME', 'Civil'],
    'Section': ['A', 'B', 'C']
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.dropdownName,
            style: TextStyle(fontSize: 16),
          ),
          DropdownButton(
            hint: Text("Select ${widget.dropdownName.toLowerCase()}"),
            items: _dropdownName[widget.dropdownName]!
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
          )
        ],
      ),
    );
  }
}
