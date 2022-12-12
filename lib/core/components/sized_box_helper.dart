import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxHelper extends StatelessWidget {
  const BoxHelper({
    Key? key,
    this.height,
    this.width,
    this.child,
  }) : super(key: key);
  final num? height, width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height == null ? null :height!.r,
      width: width == null ? null : (width! * 2).sm,
      child: child,
    );
  }
}
