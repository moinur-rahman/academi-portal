import 'package:flutter/material.dart';

class StudentContactInfo extends StatelessWidget {
  const StudentContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
            child: Text(
              'Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 150,
            padding: const EdgeInsets.only(left: 20.0),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                    width: 2,
                    color: Color(0xffDBDBDB),
                    style: BorderStyle.solid), //BorderSide
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Phone: 01969535853',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Home Town: Dhaka',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
