import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/screen_utility.dart';

class IncrementItem extends StatelessWidget {
  const IncrementItem({
    Key? key,
    required this.icons,
    required this.onPressed,
  }) : super(key: key);
  final IconData icons;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.r,
      width: 35.r,
      margin: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: MainStyle.lightBlueColor,
        borderRadius: BorderRadius.circular(
          10.r,
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Icon(
          icons,
          size: 34.r,
          color: MainStyle.darkBlueColor,
        ),
      ),
    );
  }
}
