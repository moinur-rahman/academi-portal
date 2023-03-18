import 'package:flutter/material.dart';

import '../common/constant.dart';

class RememberPassword extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?)? onCheckBoxChange;

  const RememberPassword({
    required this.isChecked,
    required this.onCheckBoxChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Transform.scale(
            scale: height * 0.0012,
            child: Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.all(AppColors.green),
              value: isChecked,
              onChanged: onCheckBoxChange,
            ),
          ),
          Text(
            "Remember Password",
            style: TextStyle(
              fontSize: height * 0.018,
              fontWeight: FontWeight.w500,
              color: isChecked ? AppColors.green : AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
