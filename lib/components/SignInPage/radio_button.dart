import 'package:flutter/material.dart';

import '../common/constant.dart';
import './input_section.dart';

class RadioButton extends StatelessWidget {
  final UserType? role;
  final UserType value;
  final void Function(UserType?)? onRadioChange;
  const RadioButton({
    required this.role,
    required this.value,
    required this.onRadioChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.3,
      child: Row(
        children: [
          Transform.scale(
            scale: height * 0.0012,
            child: Radio(
              activeColor: const Color(0xff349053),
              value: value,
              groupValue: role,
              onChanged: onRadioChange,
            ),
          ),
          Text(
            value.toString().split('.').last,
            style: TextStyle(
              fontSize: height * 0.02,
              fontWeight: FontWeight.w500,
              color: (role == value) ? AppColors.green : AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
