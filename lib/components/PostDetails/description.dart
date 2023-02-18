import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 380,
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(top: 35),
            width: double.infinity,
            child: Text(
              'Shamima Nasrin Mukta mam has published class test-1 result of CSE-435.  ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Post: 11 hours ago',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7B7878)),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Shamima Nasrin Mukta',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff349053)),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Course:  CSE-435',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            width: double.infinity,
            child: Text(
              'If anyone have any query regarding Shamima Nasrin Mukta has published class test-1 result of CSE-435. If anyone have any query regarding Shamima Nasrin Mukta has published class test-1 result of CSE-435....',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
