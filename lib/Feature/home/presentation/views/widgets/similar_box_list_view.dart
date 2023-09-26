import 'package:bookly/Feature/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_books_cubit.dart';
import 'package:bookly/Feature/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_books_state.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarListviewBooks extends StatelessWidget {
  const SimilarListviewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: BlocBuilder<SimilarBookCubit,SimilarBookState>(
        builder:(context,state){
         if(state is SimilarBookCubitSuccess){
           return SizedBox(
             height: MediaQuery.of(context).size.height * .15,
             child: ListView.builder(
               itemCount: state.books.length,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) {
                 return Padding(
                   padding: EdgeInsets.only(right: 8),
                   child: CustomeBookImage(
                     imageUrl: state.books[index].volumeInfo!.imageLinks?.thumbnail ??'' ,),
                 );
               },
             ),
           );
         }else if(state is SimilarBookCubitFailuer){
           return CustomErrorWidget(errorMessage: state.errorMessage);
         }else{
           return const CustomeLloadingIndicator();
         }
        },
      ),
    );
  }
}
