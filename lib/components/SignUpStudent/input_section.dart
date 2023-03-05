import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../view/student_dashboard.dart';
import './terms_conditions_section.dart';

import '../../models/student.dart';
import '../../api/shared_preferences.dart';
import '../../graphql/Student/student_mutations.dart';

class InputSection extends StatefulWidget {
  const InputSection({super.key});

  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<InputSection> {
  final List<String> _departmentsList = const <String>[
    'CSE',
    'EEE',
    'ME',
    'Civil'
  ];
  final List<String> _sectionList = const <String>['A', 'B', 'C'];
  String? _email,
      _name,
      _password,
      _repeatPassword,
      _department,
      _section,
      _phone;
  int? _studentId;

  Future<void> _onSubmit(BuildContext context) async {
    String status = await StudentMutations().createStudent(
      Student(
        email: _email,
        name: _name,
        password: _password,
        studentId: _studentId,
        department: _department,
        section: _section,
        phone: _phone,
      ),
    );
    try {
      if (mounted) {
        await Navigator.pushNamed(context, StudentDashboard.routeName);
        await saveData("user", status);
      }
    } catch (e) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Error"),
            content: const SizedBox(
              width: 200,
              height: 50,
              child: Text("Invalid email or password"),
            ),
            actions: [
              TextButton(
                child: const Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 750,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your email',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) {
              _email = value;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Your name',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) {
              _name = value;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) {
              _password = value;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Repeat password',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) {
              _repeatPassword = value;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone Number',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.grey,
              ),
            ),
            onChanged: (String value) {
              _phone = value;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'ID (e.g. 1704037)',
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: Icon(
                Icons.wallet_membership,
                color: Colors.grey,
              ),
            ),
            keyboardType: TextInputType.name,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (value) {
              _studentId = int.parse(value);
            },
          ),
          SizedBox(
            width: 340,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Department",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                DropdownButton(
                  hint: const Text("Select Department"),
                  items: _departmentsList
                      .map<DropdownMenuItem<String>>((String department) {
                    return DropdownMenuItem<String>(
                      value: department,
                      child: Text(
                        department,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                  value: _department,
                  onChanged: (value) {
                    setState(() {
                      _department = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            width: 340,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Section",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                DropdownButton(
                  hint: const Text("Select Section"),
                  items: _sectionList
                      .map<DropdownMenuItem<String>>((String department) {
                    return DropdownMenuItem<String>(
                      value: department,
                      child: Text(
                        department,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                  value: _section,
                  onChanged: (value) {
                    setState(() {
                      _section = value;
                    });
                  },
                ),
              ],
            ),
          ),
          TermsConditionsSection(),
          SizedBox(
            width: 200,
            height: 50,
            child: OutlinedButton(
              onPressed: () async => await _onSubmit(context),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: const BorderSide(
                    color: Colors.green,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                "Create Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
