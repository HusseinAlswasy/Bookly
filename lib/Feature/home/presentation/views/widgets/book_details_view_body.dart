import 'package:bookly/Feature/home/presentation/views/widgets/custome_details_book_appbar.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            const Text(
              '4.8',
              style: Styles.textStyle16,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '(245)',
              style: Styles.textStyle14.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
