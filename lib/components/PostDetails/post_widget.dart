import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../models/post.dart';

class PostWidget extends StatelessWidget {
  final Post args;

  PostWidget(this.args);

  String convertDate(String unixTimestamp) {

    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(int.parse(unixTimestamp) * 1000);

    return dateTime.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Text(
              args.title!,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              convertDate(args.created!),
              style: TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              args.description!,
              style: TextStyle(fontSize: 17, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
