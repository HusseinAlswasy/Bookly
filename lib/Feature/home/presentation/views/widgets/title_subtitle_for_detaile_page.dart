import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_book_rating.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class titleAndSubTitileAndRating extends StatelessWidget {
  const titleAndSubTitileAndRating({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            book.volumeInfo!.title! ?? '',
            style: Styles.textStyle30
                .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Center(
          child: Text(
            book.volumeInfo!.authors![0] ?? '',
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        BookRating(
          rating: book.volumeInfo!.publishedDate ?? 0,
          count: book.volumeInfo!.pageCount ?? 0,
        ),
      ],
    );
  }
}
