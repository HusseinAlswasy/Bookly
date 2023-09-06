import 'package:bookly/Feature/home/presentation/manager/newest_books_cubit/newest_books_cubit_cubit.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/core/error/failuers.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubitCubit,NewestBooksCubitState>(
      builder :(context,state){
        if(state is NewestBooksCubitSuccess){
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index],),
              );
            },
          );
        }else if(state is NewestBooksCubitFailuer){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomeLloadingIndicator();
        }
      }
    );
  }
}
