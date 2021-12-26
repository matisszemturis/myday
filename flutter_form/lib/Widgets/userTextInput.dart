import 'package:flutter/material.dart';

Widget UserTextInput({text, onChangeText, multiline}) {
  return TextField(
    keyboardType: multiline ? TextInputType.multiline : TextInputType.text,
    minLines: multiline ? 5 : 1, //Normal textInputField will be displayed
    maxLines: multiline ? 5 : 2, // when user presses enter it will adapt to it
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
