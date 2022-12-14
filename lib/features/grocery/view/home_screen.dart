import 'package:demo_app/core/components/register_field.dart';
import 'package:demo_app/core/extensions/colors.dart';
import 'package:demo_app/core/themes/screen_utility.dart';
import 'package:demo_app/core/themes/themes.dart';
import 'package:demo_app/features/addresses/controller/address_controller.dart';
import 'package:demo_app/features/grocery/controller/grocery_controller.dart';
import 'package:demo_app/features/grocery/view/widgets/address_button.dart';
import 'package:demo_app/features/grocery/view/widgets/home_address_card.dart';
import 'package:demo_app/features/grocery/view/widgets/home_address_view.dart';
import 'package:demo_app/features/grocery/view/widgets/home_category_view.dart';
import 'package:demo_app/features/grocery/view/widgets/section_header_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/components/search_widget.dart';
import '../../../core/components/sized_box_helper.dart';
import 'widgets/home_top_deals_view.dart';
import 'widgets/offer_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.r),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.r),
            child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/svg/button.svg',
                        height: 35.r,
                        width: 35.r,
                      ),
                      Positioned(
                          top: 10.r,
                          left: 15.r,
                          child: Text(
                            'mustafa st,',
                            style: MainTheme.normalStyle
                                .copyWith(color: Colors.white),
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5.r),
                    padding: EdgeInsets.all(20.r),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchWidget(),
            GetBuilder<AddressesController>(
                init: AddressesController(),
                builder: (context) {
                  return HomeAddressView();
                }),
            GetBuilder(
              init: GroceryController(),
              builder: (controller) {
                return Column(
                  children: [
                    HomeCategoryView(),
                    const BoxHelper(
                      height: 15,
                    ),
                    HomeTopDealView(),
                    const BoxHelper(
                      height: 10,
                    ),
                    OfferCard(),
                    const BoxHelper(
                      height: 25,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
