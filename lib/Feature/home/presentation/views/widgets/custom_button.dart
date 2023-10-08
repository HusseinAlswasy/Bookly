import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/function/lunch_url.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ), //BorderRadius.horizontal
              ),
              height: 50,
              width: 150,
              child: Center(
                child: Text(
                  '19.00 \$',
                  style: Styles.textStyle18.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              launchCustomUrl(context, bookModel.volumeInfo!.previewLink);
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffEF8262),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ), //BorderRadius.horizontal
              ),
              height: 50,
              width: 150,
              child: Center(
                child: Text(
                  getText(bookModel),
                  style: Styles.textStyle18.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String getText(BookModel bookModel) {
  if(bookModel.volumeInfo!.previewLink==null){
    return 'Not Avaliable';
  }else{
    return 'Free Preview';
  }
}
