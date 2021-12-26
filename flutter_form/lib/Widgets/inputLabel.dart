import 'package:flutter/material.dart';

Widget InputLabel({text}) {
  return Text(text.toString().toUpperCase(),
      style: TextStyle(
        color: Colors.white,
        letterSpacing: 2,
      ));
}
