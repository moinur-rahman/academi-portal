import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/StudentResult/student_result_table.dart';

class StudentResult extends StatefulWidget {
  static const routeName = '/student-result';
  @override
  State<StatefulWidget> createState() {
    return _StudentResultState();
  }
}

class _StudentResultState extends State<StudentResult> {
  final List<String> _terms = const ['1', '2', '3', '4'];
  final List<String> _levels = const ['1', '2', '3', '4'];
  String? _dropdownTermValue;
  String? _dropdownLevelValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Student Result"),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 350,
                height: 100,
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 180,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sessional",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      ToggleSwitch(
                        minHeight: 20.0,
                        minWidth: 20.0,
                        initialLabelIndex: 1,
                        cornerRadius: 1.0,
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        totalSwitches: 2,
                        //labels: ['Sessional', 'Non Sessional'],
                        //icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                        activeBgColors: const [
                          [Color(0xff349053)],
                          [Color(0xff349053)]
                        ],
                        // onToggle: (index) {
                        //   print('switched to: $index');
                        // },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Term',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        DropdownButton(
                          hint: const Text("Term"),
                          items: _terms
                              .map<DropdownMenuItem<String>>((String term) {
                            return DropdownMenuItem<String>(
                              // ignore: sort_child_properties_last
                              child: Text(
                                term,
                              ),
                              value: term,
                            );
                          }).toList(),
                          value: _dropdownTermValue,
                          onChanged: (String? value) {
                            setState(() {
                              _dropdownTermValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Level',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        DropdownButton(
                          hint: const Text("Level"),
                          items: _levels
                              .map<DropdownMenuItem<String>>((String level) {
                            return DropdownMenuItem<String>(
                              // ignore: sort_child_properties_last
                              child: Text(
                                level,
                              ),
                              value: level,
                            );
                          }).toList(),
                          value: _dropdownLevelValue,
                          onChanged: (String? value) {
                            setState(() {
                              _dropdownLevelValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              StudentResultTable(),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Term Average Result',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        // fontFamily:
                      ),
                    ),
                    Text(
                      '3.325',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color(0xff349053),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
