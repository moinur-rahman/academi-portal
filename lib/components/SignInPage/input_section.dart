import 'package:flutter/material.dart';

import './input_field.dart';
import './remember_forget_section.dart';

class InputSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<InputSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InputField("email"),
          InputField("password"),
          RememberForgetSection(),
        ],
      ),
    );
  }
}
