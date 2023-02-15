import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';

import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Create Post"),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, top: 20),
          width: double.infinity,
          height: 500,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                //margin: EdgeInsets.only(left: 15),
                child: const Text(
                  'Title',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Provide Private Comment to the Course Teacher',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 50),
                child: const Text(
                  'Description',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Provide Private Comment to the Course Teacher',
                    hintText: 'Enter Your Name',
                  ),
                  minLines: 5,
                  maxLines: null,
                ),
              ),
              // Container(
              //   alignment: Alignment.topLeft,
              //   margin: EdgeInsets.only(top: 15),
              //   child: const Text(
              //     'Attachment',
              //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              //   ),
              // ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 30),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Color(0xff349053),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  onPressed: () => {},
                  child: const Text(
                    "Attach File",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 5),
                child: const Text(
                  'You may attach up to the size fo 25MB each. Include. You may attach up to the size fo 25MB each. Include.You may attach up to the size fo 25MB each. Include',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor: Color(0xff349053),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    //Navigator.pushNamed(context, routeName)
                  },
                  child: const Text(
                    'Submit Comment',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
