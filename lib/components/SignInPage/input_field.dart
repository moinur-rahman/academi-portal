import 'package:flutter/material.dart';

import '../common/constant.dart';

class InputField extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function(String?, String) onInputFieldChange;
  const InputField({
    required this.text,
    required this.icon,
    required this.onInputFieldChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.07,
      child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: height * 0.02,
            ),
            border: const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.grey,
                width: 1.5,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.green,
                width: 2,
              ),
            ),
            floatingLabelStyle: const TextStyle(
              color: AppColors.green,
            ),
            labelText: text,
            labelStyle: TextStyle(
              fontSize: height * 0.02,
              fontWeight: FontWeight.w500,
            ),
            prefixIcon: Icon(
              Icons.email,
              color: Colors.grey,
              size: height * 0.027,
            ),
          ),
          onChanged: (String? value) {
            onInputFieldChange(value, text);
          }),
    );
  }
}
