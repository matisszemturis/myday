import 'package:flutter/material.dart';

class UserTextInput extends StatefulWidget {
  const UserTextInput({Key? key}) : super(key: key);

  @override
  _textInputState createState() => _textInputState();
}

class _textInputState extends State<UserTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
          ),
          fillColor: Colors.grey[700],
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          )),
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
        letterSpacing: 2,
      ),
    );
  }
}
