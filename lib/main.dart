import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import './view/landing_page.dart';
import './view/sign_in_page.dart';
import './view/sign_up_teacher.dart';
import './view/sign_up_student.dart';
import './view/student_dashboard.dart';
import './view/post_details.dart';
import './view/create_account_section.dart';
import './view/teacher_list.dart';

void main() async {
  await initHiveForFlutter();
  final HttpLink httpLink = HttpLink(
    'http://10.0.3.2:5000/graphql',
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  var app = GraphQLProvider(
    client: client,
    child: App(),
  );

  runApp(app);
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LandingPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        SignInPage.routeName: (context) => SignInPage(),
        CreateAccount.routeName: (context) => CreateAccount(),
        SignUpTeacher.routeName: (context) => SignUpTeacher(),
        SignUpStudent.routeName: (context) => SignUpStudent(),
        StudentDashboard.routeName: (context) => StudentDashboard(),
        PostDetails.routeName: (context) => PostDetails(),
        TeacherList.routeName: (context) => TeacherList(),
      },
    );
  }
}
