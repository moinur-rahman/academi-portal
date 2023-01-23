import 'package:flutter/material.dart';

class CarouselDot extends StatelessWidget {
  final itemNo;
  CarouselDot(this.itemNo);
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
                color: Colors.black,
              ),
              shape: BoxShape.circle,
              color: itemNo == 0 ? Colors.black : Colors.white,
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
              color: itemNo == 1 ? Colors.black : Colors.white,
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
              color: itemNo == 2 ? Colors.black : Colors.white,
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
              color: itemNo == 3 ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
