import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/extensions/colors.dart';
import '../../../../core/themes/themes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.hexColor,
    required this.title,
  }) : super(key: key);
  final String? hexColor;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65.r,
          width: 65.r,
          margin: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: hexColor == null ? Colors.blue : HexColor.fromHex(hexColor!),
          ),
        ),
        Text(
          title ?? '',
          style: MainTheme.normalStyle,
        ),
      ],
    );
  }
}
