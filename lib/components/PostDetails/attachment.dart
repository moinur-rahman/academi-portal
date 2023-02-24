import 'dart:convert';
import 'dart:io';

import 'package:academi_portal/api/shared_preferences.dart';
import 'package:flutter/material.dart';

import '../../components/common/student_bottom_bar.dart';
import '../../components/common/app_bar_widget.dart';
import '../../components/common/student_drawer.dart';

class Attachment extends StatefulWidget {
  static const routeName = "/attachment-files";

  @override
  State<StatefulWidget> createState() => _AttachmentState();
}

class _AttachmentState extends State<Attachment> {
  List<dynamic>? _imagefiles = [];

  @override
  void initState() {
    _onInit();
    super.initState();
  }

  Future _onInit() async {
    List<dynamic>? _data = jsonDecode(await getData("post"));
    setState(() {
      _imagefiles = _data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Attachment",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _imagefiles != null
              ? Wrap(
                  children: _imagefiles!.map((imageone) {
                
                    return Container(
                        child: Card(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.file(File(imageone)),
                      ),
                    ));
                  }).toList(),
                )
              : Container(),
        ],
      ),
    );
  }
}
