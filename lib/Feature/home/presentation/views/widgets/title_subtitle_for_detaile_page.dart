import 'package:bookly/Feature/home/presentation/views/widgets/custome_book_rating.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class titleAndSubTitileAndRating extends StatelessWidget {
  const titleAndSubTitileAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'The Jungle Book',
            style: Styles.textStyle30
                .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Center(
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(),
      ],
    );
  }
}
