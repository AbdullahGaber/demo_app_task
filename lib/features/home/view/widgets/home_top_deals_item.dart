import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/sized_box_helper.dart';
import '../../../../core/themes/screen_utility.dart';
import '../../../../core/themes/themes.dart';


class HomeTopDealsItem extends StatelessWidget {
  const HomeTopDealsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.r),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 90.r,
                width: 90.r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    13.r,
                  ),
                  color: const Color(0xffFEC8BD),
                ),
              ),
              Positioned(
                top: -3.r,
                left: -2.r,
                child: Container(
                  padding: EdgeInsets.all(5.r),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 20.r,
                  ),
                ),
              ),
            ],
          ),
          const BoxHelper(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Summer Sun Ice Cream Pack',
                style: MainTheme.boldStyle,
              ),
              const BoxHelper(
                height: 5,
              ),
              Text(
                'Pieces 5',
                style: MainTheme.normalStyle.copyWith(
                  fontSize: 11.r,
                ),
              ),
              const BoxHelper(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 13.r,
                  ),
                  const BoxHelper(
                    width: 3,
                  ),
                  Text(
                    '15 Minutes away',
                    style: MainTheme.normalStyle.copyWith(
                      fontSize: 11.r,
                    ),
                  ),
                ],
              ),
              const BoxHelper(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '\$ 12',
                    style: MainTheme.boldStyle.copyWith(
                      color: MainStyle.primaryColor,
                    ),
                  ),
                  const BoxHelper(
                    width: 15,
                  ),
                  Text(
                    '\$ 17',
                    style: MainTheme.normalStyle.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: MainStyle.darkGreyColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
