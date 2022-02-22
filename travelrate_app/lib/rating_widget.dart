// import 'dart:ui';

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class RatingWidget extends StatelessWidget {
  int? rating;
  

  RatingWidget({this.rating, });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < this.rating! ? Icons.star : Icons.star_border,
              color: Colors.yellow,
            );
          }),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '${this.rating!}/5 review',
          style: TextStyle(fontSize: 12, color: Colors.yellow.withOpacity(0.7)),
        )
      ],
    );
  }
}
