import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Today was:".toUpperCase(),
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
