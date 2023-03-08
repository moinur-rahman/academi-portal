import 'package:flutter/material.dart';

import '../../components/common/constant.dart';

class CarouselDot extends StatelessWidget {
  final int itemNo;
  const CarouselDot(this.itemNo, {super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: height * 0.03,
            height: height * 0.03,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.black,
              ),
              shape: BoxShape.circle,
              color: itemNo == 0 ? AppColors.black : AppColors.white,
            ),
          ),
          Container(
            width: height * 0.03,
            height: height * 0.03,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              shape: BoxShape.circle,
              color: itemNo == 1 ? AppColors.black : AppColors.white,
            ),
          ),
          Container(
            width: height * 0.03,
            height: height * 0.03,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              shape: BoxShape.circle,
              color: itemNo == 2 ? AppColors.black : AppColors.white,
            ),
          ),
          Container(
            width: height * 0.03,
            height: height * 0.03,
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
