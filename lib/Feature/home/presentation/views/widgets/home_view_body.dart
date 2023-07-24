import 'package:bookly/Feature/home/presentation/views/widgets/custome_appBar.dart';
import 'package:bookly/Feature/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomeAppBar(),
        CustomeListViewItem(),
      ],
    );
  }
}
