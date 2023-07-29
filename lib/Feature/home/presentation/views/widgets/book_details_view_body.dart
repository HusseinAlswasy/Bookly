import 'package:bookly/Feature/home/presentation/views/widgets/custom_button.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_details_book_appbar.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/title_subtitle_for_detaile_page.dart';
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
        CustomButton(),
      ],
    );
  }
}
