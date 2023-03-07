import 'package:flutter/material.dart';

import '../../components/common/constant.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Text(
        "OR",
        style: TextStyle(
          color: AppColors.green,
          fontSize: width * 0.045,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
