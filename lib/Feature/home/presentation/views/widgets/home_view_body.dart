import 'package:bookly/Feature/home/presentation/views/widgets/custome_appBar.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/feature_list_view_item.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 10,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 130,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testimage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'Harry Potter',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'J.K.Rowling',
              style: Styles.textStyle18,
            ),
          ],
        ),
      ],
    );
  }
}
