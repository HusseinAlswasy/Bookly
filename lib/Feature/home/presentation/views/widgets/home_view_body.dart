import 'package:bookly/Feature/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_appBar.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/feature_list_view_item.dart';
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
          BestSellerListView(),
        ],
      ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        },
      ),
    );
  }
}
