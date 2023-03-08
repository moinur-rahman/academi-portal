import 'package:academi_portal/components/common/constant.dart';
import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width - 80,
      child: Text(
        "Welcome back! Sign in using your social account or continue as",
        style: TextStyle(
          color: AppColors.black,
          fontSize: width * 0.03,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
