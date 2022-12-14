import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/sized_box_helper.dart';
import '../../../../core/themes/screen_utility.dart';

class HomeAddressCard extends StatelessWidget {
  const HomeAddressCard({
    Key? key,
    required this.addressTitle,
    required this.addressData,
  }) : super(key: key);
  final String? addressTitle;
  final String? addressData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: MainStyle.lightGreyColor,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      padding: EdgeInsets.all(7.r),
      margin: EdgeInsets.symmetric(
        vertical: 12.r,
        horizontal: 10.r,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 45.r,
            width: 45.r,
            decoration: BoxDecoration(
              color: MainStyle.addressCardColor2,
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
          ),
          const BoxHelper(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                addressTitle ?? '',
                style: TextStyle(
                  fontSize: 12.r,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const BoxHelper(
                height: 3,
              ),
              BoxHelper(
                width: 60,
                child: Text(
                  addressData ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 11.r,
                    
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const BoxHelper(
            width: 15,
          ),
        ],
      ),
    );
  }
}
