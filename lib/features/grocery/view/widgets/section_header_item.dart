import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/sized_box_helper.dart';

class SectionHeaderItem extends StatelessWidget {
  const SectionHeaderItem({
    Key? key,
    required this.title,
    required this.onViewAllPressed,
    required this.showViewAll,
    this.itemCount,
  }) : super(key: key);
  final String title;
  final String? itemCount;
  final void Function()? onViewAllPressed;
  final bool showViewAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style:  TextStyle(
              color: Colors.black,
              fontSize: 13.r,
              fontWeight: FontWeight.bold,
            ),
          ),
          Visibility(
            visible: showViewAll,
            //     subcategoriesCubit.subCategories.length > 5,
            child: InkWell(
              onTap: onViewAllPressed,
              child: Row(
                children: [
                  Text(
                    'See All ${itemCount ?? ''}',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 11.r,
                      color: Color(0xffCCCDCE),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
