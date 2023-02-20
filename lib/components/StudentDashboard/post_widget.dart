import 'package:flutter/material.dart';

import '../../view/post_details.dart';
import '../../models/post.dart';

class PostWidget extends StatelessWidget {
  final String title, created, description;

  PostWidget({
    required this.title,
    required this.created,
    required this.description,
  });
  String convertDate(String unixTimestamp) {
    print(unixTimestamp);
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(int.parse(unixTimestamp) * 1000)
            .toLocal();

    print(dateTime);
    return dateTime.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: TextButton(
        onPressed: (() => {
              Navigator.pushNamed(
                context,
                PostDetails.routeName,
                arguments: Post(
                  title: title,
                  created: created,
                  description: description,
                ),
              ),
            }),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
        ),
        child: Container(
          height: 150,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 45,
                width: double.infinity,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  convertDate(created),
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
