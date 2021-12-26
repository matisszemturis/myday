import 'package:flutter/material.dart';

class RandomQuote extends StatefulWidget {
  const RandomQuote({Key? key}) : super(key: key);

  @override
  _RandomQuoteState createState() => _RandomQuoteState();
}

class _RandomQuoteState extends State<RandomQuote> {
  String quote = "This is a quote";

  void initState() {
    super.initState();
    // TO DO: FETCH RANDOM QUOTE
    quote = "New quote";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      '$quote',
      style: TextStyle(
        color: Colors.white,
        letterSpacing: 2.0,
      ),
    ));
  }
}
