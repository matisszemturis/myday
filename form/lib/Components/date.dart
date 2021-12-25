import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  DateTime todaysDate = new DateTime.now();
  String day = new DateTime.now().day.toString();
  String month = new DateTime.now().month.toString();
  String year = new DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      child: Container(
        decoration: BoxDecoration(
            // border: Border.all(
            //   color: Colors.grey.shade500,
            // ),
            // borderRadius: BorderRadius.all(
            //     Radius.circular(5.0) //                 <--- border radius here
            //     ),
            ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$day/$month/$year'),
        ),
      ),
    );
  }
}
