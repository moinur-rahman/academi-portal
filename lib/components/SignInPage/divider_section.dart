import 'package:flutter/material.dart';

import '../../components/common/constant.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text(
        "OR",
        style: TextStyle(
          color: AppColors.green,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
