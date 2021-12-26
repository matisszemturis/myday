import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form/Widgets/heading.dart';
import 'package:form/Widgets/randomQuote.dart';
import 'package:form/Widgets/submitButton.dart';
import 'package:form/Widgets/todayDate.dart';
import 'package:form/Widgets/userBigTextInput.dart';
import 'package:form/Widgets/userRating.dart';
import 'package:form/Widgets/userTextInput.dart';

void main() {
  runApp(Form());
}

class Form extends StatelessWidget {
  const Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Screen with common UI comp - nav etc.
        theme: ThemeData(fontFamily: 'RobotoMono'),
        home: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.grey,
          //   title: const Text("How was your day?"),
          // ),
          body: Container(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Heading(),
                  TodayDate(),
                  UserRating(),
                  UserBigTextInput(),
                  UserTextInput(),
                  UserTextInput(),
                  RandomQuote(),
                  SubmitButton(),
                  SizedBox(height: 30),
                ],
              )),
        ));
  }
}
