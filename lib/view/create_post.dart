import 'dart:convert';

import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';
import '../view/teacher_dashboard.dart';
import '../components/common/student_bottom_bar.dart';
import '../graphql/Post/post_mutations.dart';
import '../api/shared_preferences.dart';
import '../models/post.dart';

import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  static const routeName = '/create-post';

  @override
  State<StatefulWidget> createState() {
    return _CreatePostState();
  }
}

class _CreatePostState extends State<CreatePost> {
  String? _title, _description;

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
          height: 650,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topLeft,
                //margin: EdgeInsets.only(left: 15),
                child: const Text(
                  'Title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Provide Post Title',
                    hintText: 'Title Name',
                  ),
                  onChanged: (String? value) {
                    _title = value;
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 50),
                child: const Text(
                  'Description',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Provide Post Description',
                    hintText: 'Enter Description',
                  ),
                  minLines: 7,
                  maxLines: null,
                  onChanged: (String? value) {
                    _description = value;
                  },
                ),
              ),
              // Container(

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
                width: 160,
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 35),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff349053),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () async {
                    var data = jsonDecode(await getData("user"));
              
                    String status = await PostMutations().createPost(Post(
                      title: _title,
                      description: _description,
                      teacherId: data["teacherLogin"]["id"],
                    ));
                    
                    if (status != 'Failed')
                      Navigator.pushNamed(context, TeacherDashboard.routeName);
                  },
                  child: const Text(
                    'Post',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
