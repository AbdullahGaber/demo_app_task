import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../themes/screen_utility.dart';
import './register_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegisterField(
      filled: true,
      fillColor: MainStyle.searchFieldColor,
      hintText: 'Search in thousands of products',
      prefixIcon: Transform.scale(
        scale: 0.5,
        child: SvgPicture.asset(
          'assets/icons/svg/search.svg',
          height: 24.r,
          width: 24.r,
        ),
      ),
    );
  }
}
