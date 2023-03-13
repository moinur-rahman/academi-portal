import 'package:flutter/material.dart';

import '../common/constant.dart';

class SignUpButton extends StatelessWidget {
  final String name, routeName;
  const SignUpButton({
    required this.name,
    required this.routeName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.55,
      height: height * 0.07,
      child: OutlinedButton(
        onPressed: () => Navigator.pushNamed(context, routeName),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.green,
          side: const BorderSide(
            color: AppColors.green,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: height * 0.023,
          ),
        ),
      ),
    );
  }
}
