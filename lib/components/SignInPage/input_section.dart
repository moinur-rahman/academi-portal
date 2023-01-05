import 'package:flutter/material.dart';

import './input_field.dart';
import './remember_forget_section.dart';

class InputSection extends StatelessWidget {
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
