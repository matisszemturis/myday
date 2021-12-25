import 'package:flutter/material.dart';

class TodayDate extends StatefulWidget {
  const TodayDate({Key? key}) : super(key: key);

  @override
  State<TodayDate> createState() => _DateState();
}

class _DateState extends State<TodayDate> {
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
