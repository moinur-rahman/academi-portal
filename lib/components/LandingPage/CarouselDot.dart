import 'package:flutter/material.dart';

import '../../components/common/constant.dart';

class CarouselDot extends StatelessWidget {
  final int index, itemNo;
  const CarouselDot({
    required this.index,
    required this.itemNo,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: height * 0.03,
      height: height * 0.03,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
        ),
        shape: BoxShape.circle,
        color: itemNo == index ? AppColors.black : AppColors.white,
      ),
    );
  }
}
