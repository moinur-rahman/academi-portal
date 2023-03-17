import 'package:flutter/material.dart';

class DropDownField extends StatelessWidget {
  final String name;
  final String hint;
  final String? value;
  final List<String> list;
   final Function(String?) onDropDownChange;

  const DropDownField({
    required this.name,
    required this.hint,
    required this.value,
    required this.list,
    required this.onDropDownChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: height * 0.02,
            ),
          ),
          DropdownButton(
            hint: Text(
              hint,
              style: TextStyle(
                fontSize: height * 0.02,
              ),
            ),
            items: list.map<DropdownMenuItem<String>>((String department) {
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
                
            value: value,
            onChanged: onDropDownChange,
          ),
        ],
      ),
    );
  }
}
