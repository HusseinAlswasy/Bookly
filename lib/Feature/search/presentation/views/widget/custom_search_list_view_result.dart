import 'package:bookly/Feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomeSearchListViewResult extends StatelessWidget {
  const CustomeSearchListViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BookListViewItem(bookModel: null,),
          child:Text('hussein'),
        );
      },
    );
  }
}
