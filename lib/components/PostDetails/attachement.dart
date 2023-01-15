import 'package:flutter/material.dart';

class Attachment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Attachment",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            child: Row(children: [
              Icon(Icons.attachment),
              Text("2023-01-ct-result.pdf (552KB)",
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
