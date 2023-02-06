import 'package:flutter/material.dart';

class StudentEducationalInfo extends StatelessWidget {
  const StudentEducationalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
            child: Text(
              'Educational Background',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 180,
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
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Notre Dame College,Dhaka',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '2015-2017',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xff898989),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Khilgaon Govt. High School',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '2005-2015',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xff898989),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
