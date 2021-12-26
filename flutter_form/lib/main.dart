import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form/Widgets/heading.dart';
import 'package:form/Widgets/inputLabel.dart';
import 'package:form/Widgets/randomQuote.dart';
import 'package:form/Widgets/submitButton.dart';
import 'package:form/Widgets/recordsDate.dart';
import 'package:form/Widgets/userRating.dart';
import 'package:form/Widgets/userTextInput.dart';
import 'Classes/record.dart';

void main() {
  runApp(Form());
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  Record todaysRecord = Record(
    rating: 0,
    date: new DateTime.now(),
    distractions: "",
    positive: "test",
    note: "",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'RobotoMono'),
        home: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.grey,
          //   title: const Text("How was your day?"),
          // ),
          body: Container(
              color: Colors.grey[850],
              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Heading(),
                  UserRating(
                    rating: todaysRecord.rating,
                    setRating: (int newRating) => setState(() {
                      todaysRecord.rating = newRating;
                    }),
                  ),
                  RecordDate(date: todaysRecord.date),
                  InputLabel(text: "today's distractions"),
                  UserTextInput(
                    text: todaysRecord.distractions,
                    multiline: true,
                    onChangeText: (String newDistractions) => setState(() {
                      todaysRecord.distractions = newDistractions;
                    }),
                  ),
                  InputLabel(text: "positive"),
                  UserTextInput(
                    text: todaysRecord.positive,
                    multiline: false,
                    onChangeText: (String newPositives) => setState(() {
                      todaysRecord.positive = newPositives;
                    }),
                  ),
                  InputLabel(text: "note o self"),
                  UserTextInput(
                    text: todaysRecord.note,
                    multiline: false,
                    onChangeText: (String newNotes) => setState(() {
                      todaysRecord.note = newNotes;
                    }),
                  ),
                  RandomQuote(),
                  SubmitButton(),
                  SizedBox(height: 30),
                ],
              )),
        ));
  }
}
