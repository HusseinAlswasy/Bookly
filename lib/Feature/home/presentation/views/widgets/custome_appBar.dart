import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 25),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KSearchView);
            },
          ),
        ],
      ),
    );
  }
}
