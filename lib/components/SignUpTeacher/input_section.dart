import 'package:flutter/material.dart';

import './dropdown_button.dart';
import 'input_field.dart';

class InputSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InputField("email"),
          InputField("name"),
          InputField("password"),
          InputField("repeat-password"),
          DropdownSection(),
          // items: [DropdownMenuItem(child: Text('CSE'))], onChanged: null)
        ],
      ),
    );
  }
}
