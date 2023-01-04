import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckBoxState();
  }
}

class _CheckBoxState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.all(Colors.blue),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}
