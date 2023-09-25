import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_book_rating.dart';
import 'package:bookly/constents.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KDetailsView);
      },
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.KDetailsView);
            },
            child: SizedBox(
              height: 125,
              child: Row(
                children: [
                  CustomeBookImage(imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail??'',),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo!.title??'',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSetraFine),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo!.authors?[0]??'',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    BookRating(
                      rating: bookModel.volumeInfo!.publishedDate ?? '1995',
                      count: bookModel.volumeInfo!.pageCount ?? 117,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
