import 'package:flutter/material.dart';

class PrivateComment extends StatelessWidget {
  const PrivateComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            //alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(0, 60, 0, 20),
            child: const Text(
              'Private Comment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Provide private comment to the course teacher',
                hintText: 'Enter Comment',
              ),
              minLines: 7,
              maxLines: null,
            ),
          ),
          Container(
            width: 160,
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 35),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff349053),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              onPressed: () {
                //Navigator.pushNamed(context, routeName)
              },
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
