import 'package:bookly/constents.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KDetailsView);
      },
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.KDetailsView);
            },
            child: SizedBox(
              height: 130,
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                    image: const DecorationImage(
                      image: AssetImage(AssetsData.testimage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potter and the Globet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSetraFine),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 \$',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xffFFDD4F),
                      size: 15,
                    ),
                    const SizedBox(
                      width: 6.3,
                    ),
                    const Text(
                      '4.8',
                      style: Styles.textStyle16,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(245)',
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
