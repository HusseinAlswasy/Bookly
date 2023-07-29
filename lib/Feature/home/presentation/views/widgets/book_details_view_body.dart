import 'package:bookly/Feature/home/presentation/views/widgets/custom_button.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_book_rating.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_details_book_appbar.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
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
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 95),
          child: FeatureListViewItem(),
        ),
        SizedBox(
          height: 28,
        ),
        titleAndSubTitileAndRating(),
      ],
    );
  }
}

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
        const CustomButton(),
      ],
    );
  }
}
