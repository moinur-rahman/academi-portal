import 'package:flutter/material.dart';

import '../../components/common/constant.dart';

class CarouselDot extends StatelessWidget {
  final int itemNo;
  const CarouselDot(this.itemNo, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.black,
              ),
              shape: BoxShape.circle,
              color: itemNo == 0 ? AppColors.black : AppColors.white,
            ),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              shape: BoxShape.circle,
              color: itemNo == 1 ? AppColors.black : AppColors.white,
            ),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              shape: BoxShape.circle,
              color: itemNo == 2 ? AppColors.black : AppColors.white,
            ),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              shape: BoxShape.circle,
              color: itemNo == 3 ? AppColors.black : AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
