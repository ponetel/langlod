import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  // const RatingStars({ Key? key }) : super(key: key);

  final int rating;
  RatingStars(this.rating);

  @override
  Widget build(BuildContext context) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += "*";
    }
    stars.trim();
    return Text(
      stars,
      style: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.w600, color: Colors.amber),
    );
  }
}
