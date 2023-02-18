import 'package:flutter/material.dart';
import 'dart:convert';

import '../components/common/app_bar_widget.dart';
import '../api/shared_preferences.dart';
import '../graphql/Post/post_mutations.dart';
import '../models/post.dart';

class TeacherDashboard extends StatefulWidget {
  static const routeName = '/teacher-dashboard';

  @override
  State<StatefulWidget> createState() {
    return _TeacherDashboardState();
  }
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  String? _title, _description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget("Teacher Feed"),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      width: double.infinity,
                      child: Text(
                        "Title",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 80,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Title',
                        ),
                        onChanged: ((String? value) {
                          _title = value;
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      width: double.infinity,
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        maxLines: 9,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Description',
                        ),
                        onChanged: ((String? value) {
                          _description = value;
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    var data = jsonDecode(await getData("user"));

                    String status = await PostMutations().createPost(Post(
                      title: _title,
                      description: _description,
                      teacherId: data["teacherLogin"]["id"],
                    ));
                    print(data["teacherLogin"]["id"]);
                    print(status);
                    if (status != 'Failed')
                      Navigator.pushNamed(context, TeacherDashboard.routeName);
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
