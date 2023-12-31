import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});

  final dynamic rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              color: Color(0xffFFDD4F),
              size: 15,
            ),
            const SizedBox(
              width: 6.3,
            ),
            Text(
              count.toString(),
              style: Styles.textStyle16,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '($rating)',
              style: Styles.textStyle14.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
