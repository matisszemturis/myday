import 'package:flutter/material.dart';

class UserRating extends StatefulWidget {
  const UserRating({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<UserRating> {
  int rating = 0;
  Color inactive = Colors.white;
  Color active = Colors.blue.shade600;

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
                  color: rating > 0 ? active : inactive,
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
                  color: rating > 1 ? active : inactive,
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
                  color: rating > 2 ? active : inactive,
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
                  color: rating > 3 ? active : inactive,
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
                  color: rating > 4 ? active : inactive,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
