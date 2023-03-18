import 'dart:convert';

import 'package:academi_portal/components/common/constant.dart';
import 'package:flutter/material.dart';

import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/common/app_bar_widget.dart';
import '../components/StudentDashboard/data.dart';
import '../components/StudentDashboard/post_widget.dart';

import '../graphql/Post/post_queries.dart';

class StudentDashboard extends StatefulWidget {
  static const routeName = '/student-dashboard';
  @override
  State<StatefulWidget> createState() {
    return _StudentDashboardState();
  }
}

class _StudentDashboardState extends State<StudentDashboard> {
  List<dynamic> _data = [];
  bool _selectNavigation = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    var posts = jsonDecode(await PostQueries().getAllPosts());

    setState(() {
      posts = posts["getAllPosts"];
      _data = posts;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        title: "Student Feed",
        height: height,
      ),
      drawer: const StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 280,
                      height: 40,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.green,
                        ),
                        child: const Icon(Icons.search),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 130,
                            height: 35,
                            child: TextButton(
                              onPressed: () => setState(() {
                                _selectNavigation = true;
                                _data = most_important_data;
                              }),
                              child: Text(
                                "Most Important",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(
                            color: _selectNavigation
                                ? Colors.black
                                : Colors.grey[50],
                            thickness: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 105,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 105,
                            height: 35,
                            child: TextButton(
                              onPressed: () => setState(() {
                                _selectNavigation = false;
                                _data = most_recent_data;
                              }),
                              child: Text(
                                "Most Recent",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(
                            color: _selectNavigation
                                ? Colors.grey[50]
                                : Colors.black,
                            thickness: 3,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ..._data.map((element) {
                return PostWidget(
                  title: element['title']!,
                  created: element['created']!,
                  description: element['description']!,
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
