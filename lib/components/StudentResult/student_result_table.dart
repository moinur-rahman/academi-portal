import 'package:flutter/material.dart';

import '../StudentResult/student_result_table_cell.dart';

class StudentResultTable extends StatelessWidget {
  //var index=0;
  final List<Map<String, String>> data;

  StudentResultTable(this.data);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Table(
        // border: TableBorder.all(),
        defaultColumnWidth: const FixedColumnWidth(200.0),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: data
            .map(
              (element) => TableRow(
                //decoration: BoxDecoration(color: Colors.green),
                children: <Widget>[
                  //index < data.length?
                  TableCellElement(
                    element['courseCode'] as String,
                    data.indexOf(element),
                  ),
                  TableCellElement(
                    element['gpa'] as String,
                    data.indexOf(element),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
