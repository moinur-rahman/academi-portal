import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String inputFieldName;

  InputField(this.inputFieldName);

  @override
  State<InputField> createState() {
    return _InputFieldState();
  }
}

class _InputFieldState extends State<InputField> {
  final _placeholderList = const {
    'email': {'icon': '0xe22a', 'placeholder': 'Enter your email'},
    'name': {'icon': '0xe491', 'placeholder': 'Your name'},
    'password': {'icon': '0xe3ae', 'placeholder': 'Enter your password'},
    'repeat-password': {'icon': '0xe3ae', 'placeholder': 'Repeat password'},
    'id': {'icon': '0xe13f', 'placeholder': 'ID (e.g. 1704037)'}
  };
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText:
            _placeholderList[widget.inputFieldName]!['placeholder'] as String,
        prefixIcon: Icon(
          IconData(int.parse(_placeholderList[widget.inputFieldName]!['icon']!),
              fontFamily: 'MaterialIcons'),
          color: Colors.grey,
        ),
      ),
    );
  }
}
