import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screen_utility.dart';

class MainTheme {
  static final subTextStyleBold = TextStyle(
    color: MainStyle.darkGreyColor,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(14),
  );
  static final subTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: MainStyle.darkGreyColor,
  );
  static final subTextStyleLite = TextStyle(
    fontSize: ScreenUtil().setSp(11),
    color: MainStyle.darkGreyColor,
  );
  static final buttonStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 24.r,
  );
  static final headerStyle1 = TextStyle(
    fontSize: ScreenUtil().setSp(30),
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static final headerStyle2 = TextStyle(
    color: MainStyle.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(20),
  );
  static final headerStyle3 = TextStyle(
    // color: MainStyle.mainColor,
    color: MainStyle.lightBlack,
    fontWeight: FontWeight.bold,
    fontSize: 16.r,
  );
  static final headerStyle4 = TextStyle(
    color: MainStyle.darkGreyColor,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(14),
  );
  static final normalStyle = TextStyle(
    // color: MainStyle.mainColor,
    color: MainStyle.lightBlack,
    // fontWeight: FontWeight.bold,
    fontSize: 12.r,
  );
  static final boldStyle = TextStyle(
    // color: MainStyle.mainColor,
    color: MainStyle.lightBlack,
    fontWeight: FontWeight.bold,
    fontSize: 12.r,
  );
  static final italicStyle = TextStyle(
    // color: MainStyle.mainColor,
    color: MainStyle.lightBlack,
    decoration: TextDecoration.underline,

    fontSize: 12.r,
  );
}
