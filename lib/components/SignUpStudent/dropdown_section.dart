import 'package:flutter/material.dart';

import './dropdown_button_single.dart';

class DropdownSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropdownButtonSingle("Department"),
          DropdownButtonSingle("Section"),
        ],
      ),
    );
  }
}
