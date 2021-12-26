import 'package:flutter/material.dart';

Widget RecordDate({date}) {
  String day = new DateTime.now().day.toString();
  String month = new DateTime.now().month.toString();
  String year = new DateTime.now().year.toString();

  return ConstrainedBox(
    constraints: const BoxConstraints(
      minWidth: double.infinity,
    ),
    child: Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$day / $month / $year',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
