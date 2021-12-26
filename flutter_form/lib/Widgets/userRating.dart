import 'package:flutter/material.dart';

Widget UserRating({rating, setRating}) {
  Color inactive = Colors.white;
  Color active = Colors.blue.shade600;

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
              onPressed: () => setRating(1),
              highlightColor: Colors.blue.shade100,
              icon: Icon(
                Icons.star,
                color: rating > 0 ? active : inactive,
              ),
            ),
            IconButton(
              onPressed: () => setRating(2),
              highlightColor: Colors.blue.shade100,
              icon: Icon(
                Icons.star,
                color: rating > 1 ? active : inactive,
              ),
            ),
            IconButton(
              onPressed: () => setRating(3),
              highlightColor: Colors.blue.shade100,
              icon: Icon(
                Icons.star,
                color: rating > 2 ? active : inactive,
              ),
            ),
            IconButton(
              onPressed: () => setRating(4),
              highlightColor: Colors.blue.shade100,
              icon: Icon(
                Icons.star,
                color: rating > 3 ? active : inactive,
              ),
            ),
            IconButton(
              onPressed: () => setRating(5),
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
