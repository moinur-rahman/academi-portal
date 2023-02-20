import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:link_text/link_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../view/sign_in_page.dart';

import 'package:http/http.dart' as http;

import '../../graphql/meeting/meeting_queries.dart';

class TeacherConversation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<TeacherConversation> {
  String? _message,
      _name,
      _password,
      _repeatPassword,
      _department,
      _section,
      _phone;
  int? _studentId;

  List<String> _messageList = [];

  String link = '';
  // write async function
  Future sendMeetingLink() async {
    var status = jsonDecode(await MeetingQueries().setMeeting());
    setState(() {
      link = status["getMeetingUrl"]["meetingUrl"];
    });
    // print(status["getMeetingUrl"]["meetingUrl"]);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // width: 300,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your private message',
            ),
            onChanged: (String text) {
              _message = text;
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () => {
                setState(() {
                  _messageList.add(_message!);
                })
              },
              child: Text("Send Message"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF349053)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.topRight,
            height: 150,
            width: 100,
            // padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ..._messageList.map((tx) {
                  return Text(
                    tx,
                    style: TextStyle(),
                    textAlign: TextAlign.right,

                    // padding: EdgeInsets.all(10),
                  );
                }).toList(),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () async => await sendMeetingLink(),
              child: Text("Create Meeting Link"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF349053)),
            ),
          ),

          TextButton(
            onPressed: () async {
              if (await canLaunchUrlString(link)) {
                await launchUrlString(link);
              } else {
                throw 'Could not launch $link';
              }
            },
            child: LinkText(
              link,
              textAlign: TextAlign.center,
              // shouldTrimParams: true,
            ),
          ),

          // Text(link)
        ],
      ),
    );
  }
}
