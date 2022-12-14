import 'package:demo_app/features/grocery/controller/grocery_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/components/sized_box_helper.dart';
import '../../../../core/themes/screen_utility.dart';
import '../../../../core/themes/themes.dart';

class OfferCard extends StatelessWidget {
  OfferCard({
    Key? key,
  }) : super(key: key);

  final GroceryController groceryController = Get.find();

  @override
  Widget build(BuildContext context) {
    var banner = groceryController.banner;
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
              banner?.name ?? '',
              style: MainTheme.normalStyle.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              banner?.ownerName?.toUpperCase() ?? '',
              // textScaleFactor: 2,
              style: MainTheme.boldStyle
                  .copyWith(letterSpacing: 2, fontSize: 34.r),
            ),
            Row(
              children: [
                Text(
                  '\$ ${banner?.newPrice}',
                  style: MainTheme.headerStyle3.copyWith(
                    color: MainStyle.primaryColor,
                  ),
                ),
                const BoxHelper(
                  width: 15,
                ),
                Text(
                  '\$ ${banner?.oldPrice}',
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
              '* Available until ${banner?.expireDate ?? ''}',
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
