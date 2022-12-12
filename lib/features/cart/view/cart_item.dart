import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/sized_box_helper.dart';
import '../../../core/themes/screen_utility.dart';
import '../../../core/themes/themes.dart';
import 'increment_item.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 65.r,
          width: 65.r,
          margin: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: MainStyle.primaryColor,
          ),
        ),
        const BoxHelper(
          width: 7,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoxHelper(
              width: 60,
              child: Text(
                'Turkish Steak',
                overflow: TextOverflow.ellipsis,
                style: MainTheme.headerStyle3.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const BoxHelper(
              height: 10,
            ),
            Text(
              '173 Grams',
              style: MainTheme.normalStyle,
            ),
            const BoxHelper(
              height: 10,
            ),
            Text(
              '\$ 30',
              style: MainTheme.headerStyle3.copyWith(
                  fontWeight: FontWeight.normal, color: MainStyle.primaryColor),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            IncrementItem(
              onPressed: () {},
              icons: Icons.remove,
            ),
            Text(
              '2',
              style: MainTheme.headerStyle3,
            ),
            IncrementItem(
              onPressed: () {},
              icons: Icons.add,
            ),
          ],
        )
      ],
    );
  }
}
