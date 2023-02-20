import 'package:flutter/material.dart';

class BorderLine extends StatelessWidget {
  const BorderLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(width: 5, color: Colors.red),
        //borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      // child: const Text(
      //   "FlutterBeads",
      //   style: TextStyle(fontSize: 34.0),
      // ),
    );
  }
}
