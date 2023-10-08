import 'package:bookly/Feature/home/presentation/views/widgets/custom_button.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_details_book_appbar.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/similar_box_list_view.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/title_subtitle_for_detaile_page.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

class BookDetailsViewsBody extends StatelessWidget {
  const BookDetailsViewsBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              const CustomAppBarBookDetails(),
              const SizedBox(
                height: 25,
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 95),
                 child: CustomeBookImage(
                   imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
                 ),
              ),
              const SizedBox(
                height: 28,
              ),
              titleAndSubTitileAndRating(book: bookModel,),
              CustomButton(bookModel: bookModel,),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SimilarListviewBooks(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

