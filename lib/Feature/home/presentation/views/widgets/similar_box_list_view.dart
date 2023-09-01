import 'package:bookly/Feature/home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:flutter/material.dart';

class SimilarListviewBooks extends StatelessWidget {
  const SimilarListviewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 8),
              child: CustomeBookImage(imageUrl: 'https://edit.org/images/cat/book-covers-big-2019101610.jpg',),
            );
          },
        ),
      ),
    );
  }
}
