import 'package:flutter/material.dart';

class UserBigTextInput extends StatefulWidget {
  const UserBigTextInput({ Key? key }) : super(key: key);

  @override
  _textInputState createState() => _textInputState();
}

class _textInputState extends State<UserBigTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
       keyboardType: TextInputType.multiline,
    minLines: 5,//Normal textInputField will be displayed
    maxLines: 5,// when user presses enter it will adapt to it
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintText: '',
            ),
          );
  }
}