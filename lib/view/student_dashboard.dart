import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/StudentDashboard/drawer_widget.dart';

class StudentDashboard extends StatelessWidget {
  static const routeName = '/student-dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Text("Hello"),
        ],
      ),
    );
  }
}
