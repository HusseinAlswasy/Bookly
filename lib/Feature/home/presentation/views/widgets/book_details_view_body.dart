import 'package:bookly/Feature/home/presentation/views/widgets/custome_details_book_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewsBody extends StatelessWidget {
  const BookDetailsViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 35,
        ),
        CustomAppBarBookDetails(),
      ],
    );
  }
}
