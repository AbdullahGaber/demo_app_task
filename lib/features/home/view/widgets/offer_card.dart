import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/sized_box_helper.dart';
import '../../../../core/themes/screen_utility.dart';
import '../../../../core/themes/themes.dart';


class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.r,
      margin: EdgeInsets.all(10.r),
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: const Color(0xffFEC8BD),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Row(children: [
        const BoxHelper(
          width: 60,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mega',
              style: MainTheme.normalStyle.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              'whopper'.toUpperCase(),
              // textScaleFactor: 2,
              style: MainTheme.boldStyle
                  .copyWith(letterSpacing: 2, fontSize: 34.r),
            ),
            Row(
              children: [
                Text(
                  '\$ 12',
                  style: MainTheme.headerStyle3.copyWith(
                    color: MainStyle.primaryColor,
                  ),
                ),
                const BoxHelper(
                  width: 15,
                ),
                Text(
                  '\$ 12',
                  style: MainTheme.headerStyle3.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              '* Available until 24 December 2020',
              style: MainTheme.normalStyle.copyWith(
                color: Colors.white,
              ),
            )
          ],
        )
      ]),
    );
  }
}
