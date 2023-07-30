import 'package:bookly/Feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/Feature/search/presentation/views/widget/custom_search_list_view_result.dart';
import 'package:bookly/Feature/search/presentation/views/widget/custom_search_text_feild.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        children: [
          CustomeSearchTextFeild(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: CustomeSearchListViewResult()),
        ],
      ),
    );
  }
}
