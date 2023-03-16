import 'package:flutter/material.dart';

class DropDownField extends StatelessWidget {
  final List<String> departmentList;
  final String? department;
  final Function(String?) onDropDownChange;

  const DropDownField({
    required this.departmentList,
    required this.department,
    required this.onDropDownChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
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
            items: departmentList
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
            value: department,
            onChanged: onDropDownChange,
          ),
        ],
      ),
    );
  }
}
