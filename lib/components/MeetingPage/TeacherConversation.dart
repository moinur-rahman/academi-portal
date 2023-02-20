import 'package:flutter/material.dart';

import '../../view/sign_in_page.dart';

import 'package:http/http.dart' as http;

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

  // write async function
  Future sendMeetingLink() async {
    // create a Map<String, String> to store the data we want to submit
    // Map<String, String> data = {
    //   'message': _message!,
    // };

    const data = {
      "topic": "test post ewe",
      "type": 2,
      "start_time": "2023-02-21T12:10:10Z",
      "duration": "30",
      "password": "123456",
      "settings": {
        "host_video": true,
        "participant_video": true,
        "join_before_host": true,
        "mute_upon_entry": "true",
        "watermark": "true",
        "audio": "voip",
        "auto_recording": "cloud"
      }
    };

    // make POST request
    http.Response response = await http.post(
        Uri.parse('https://api.zoom.us/v2/users/me/meetings'),
        body: data,
        headers: {
          // 'Content-Type': 'application/json',
          // 'Accept': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI2N2MxMTM0Yy1jZDM2LTQyOWMtODI2OC00NGI5ZjcwMjk4NTAifQ.eyJ2ZXIiOjgsImF1aWQiOiI0MzdiYjUzM2NmMTM1OTYyMTk2YjVjZDdlYzg5NTYyOCIsImNvZGUiOiI4Z3U0bmx5d084dnE5V0htbWZLU28yaFF3dnRONGg2RWciLCJpc3MiOiJ6bTpjaWQ6Z21sdmI1S09SaU9obllHNW1qcU1nIiwiZ25vIjowLCJ0eXBlIjowLCJ0aWQiOjAsImF1ZCI6Imh0dHBzOi8vb2F1dGguem9vbS51cyIsInVpZCI6InpSVUNoaERzUmVpTWZEZVlselZVYUEiLCJuYmYiOjE2NzY4NzMxMTcsImV4cCI6MTY3Njg3NjcxNywiaWF0IjoxNjc2ODczMTE3LCJhaWQiOiJzbUdYRlBSSFRBYWxsTTdjMEdtdmhBIiwianRpIjoiZTljZmQ0NTItYjM0NS00NjkzLThkZDctMGE5YmU1ZGJlOWI4In0.V7mKhqHmFM60KNYgtnPc5TQg9t6Pye7Drj8-mrKTXYHjPD3FOKt0D4LImmCKaADrIaieIt2fClcaRju7_jzuFA',
        });

    print(response);

    // check the status code for the result
    // int statusCode = response.statusCode;

    // // this API passes back the id of the new item added to the body
    // String body = response.body;

    // print(body);
    // print(statusCode);
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
          // ..._messageList.map((tx) {
          //   return Text(
          //     tx,
          //     style: TextStyle(),
          //     textAlign: TextAlign.left,
          //   );
          // }).toList(),
        ],
      ),
    );
  }
}
