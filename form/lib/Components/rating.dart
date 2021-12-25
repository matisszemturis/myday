import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Rating> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    rating = 1;
                  });
                },
                highlightColor: Colors.blue.shade100,
                icon: Icon(
                  Icons.star,
                  color: rating > 0 ? Colors.blue : Colors.grey.shade700,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    rating = 2;
                  });
                },
                highlightColor: Colors.blue.shade100,
                icon: Icon(
                  Icons.star,
                  color: rating > 1 ? Colors.blue : Colors.grey.shade700,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    rating = 3;
                  });
                },
                highlightColor: Colors.blue.shade100,
                icon: Icon(
                  Icons.star,
                  color: rating > 2 ? Colors.blue : Colors.grey.shade700,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    rating = 4;
                  });
                },
                highlightColor: Colors.blue.shade100,
                icon: Icon(
                  Icons.star,
                  color: rating > 3 ? Colors.blue : Colors.grey.shade700,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    rating = 5;
                  });
                },
                highlightColor: Colors.blue.shade100,
                icon: Icon(
                  Icons.star,
                  color: rating > 4 ? Colors.blue : Colors.grey.shade700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
