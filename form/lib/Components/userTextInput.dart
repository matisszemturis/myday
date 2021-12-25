import 'package:flutter/material.dart';

class UserTextInput extends StatefulWidget {
  const UserTextInput({ Key? key }) : super(key: key);

  @override
  _textInputState createState() => _textInputState();
}

class _textInputState extends State<UserTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintText: 'Enter a search term',
            ),
          );
  }
}