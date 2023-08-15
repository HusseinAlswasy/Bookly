import 'package:bookly/Feature/home/presentation/manager/featured_books_cuibt/featured_books_cubit.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: FeatureListViewItem(),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailuer) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return CustomeLloadingIndicator();
        }
      },
    );
  }
}
