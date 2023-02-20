import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/StudentResult/student_result_table.dart';
import '../components/StudentResult/data.dart';

class StudentResult extends StatefulWidget {
  static const routeName = '/student-result';
  @override
  State<StatefulWidget> createState() {
    return _StudentResultState();
  }
}

class _StudentResultState extends State<StudentResult> {
  final List<String> _terms = ['1', '2'];
  final List<String> _levels = ['1', '2', '3', '4'];
  String? _dropdownTermValue = '1';
  String? _dropdownLevelValue = '1';
  String? _toggleResultType = 'course';
  //print(stateIndex);
  List<Map<String, String>> _tableData = l1_t1['course']!;

  bool _selection = false;

  void changeValue(String? level, String? term, String? resultType) {
    if (level == '1') {
      if (term == '1') {
        _tableData = l1_t1[resultType]!;
      } else {
        _tableData = l1_t2[resultType]!;
      }
    } else if (level == '2') {
      if (term == '1') {
        _tableData = l2_t1[resultType]!;
      } else {
        _tableData = l2_t2[resultType]!;
      }
    } else if (level == '3') {
      if (term == '1') {
        _tableData = l3_t1[resultType]!;
      } else {
        _tableData = l3_t2[resultType]!;
      }
    } else if (level == '4') {
      if (term == '1') {
        _tableData = l4_t1[resultType]!;
      } else {
        _tableData = l4_t2[resultType]!;
      }
    }
  }

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
                      Text(
                        _selection ? "Sessional" : "Course",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      Switch(
                        // This bool value toggles the switch.
                        value: _selection,
                        activeColor: Colors.green,
                        onChanged: (bool value) {
                          // This is called when the user toggles the switch.
                          setState(
                            () {
                              if (_selection) {
                                _toggleResultType = "course";
                                changeValue(_dropdownLevelValue,
                                    _dropdownTermValue, _toggleResultType);
                                // _tableData = l1_t1['course']!;
                              } else {
                                // _tableData = l1_t1['sessional']!;
                                _toggleResultType = "sessional";
                                changeValue(_dropdownLevelValue,
                                    _dropdownTermValue, _toggleResultType);
                              }
                              _selection = value;
                            },
                          );
                        },
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
                              changeValue(_dropdownLevelValue,
                                  _dropdownTermValue, _toggleResultType);
                            });
                          },
                        ),
                      ],
                    ),
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

                              changeValue(_dropdownLevelValue,
                                  _dropdownTermValue, _toggleResultType);
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              StudentResultTable(_tableData),
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
