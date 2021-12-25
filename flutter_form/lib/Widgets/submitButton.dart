import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: double.infinity,
      child: FlatButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Submit'.toUpperCase(),
            // style: TextStyle(
            //   fontSize: 20.0,
            // ),
          ),
        ),
        color: Colors.blueAccent,
        textColor: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
