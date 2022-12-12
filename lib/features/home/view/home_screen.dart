import 'package:demo_app/core/components/register_field.dart';
import 'package:demo_app/core/extensions/colors.dart';
import 'package:demo_app/core/themes/screen_utility.dart';
import 'package:demo_app/core/themes/themes.dart';
import 'package:demo_app/features/home/view/widgets/home_address_card.dart';
import 'package:demo_app/features/home/view/widgets/home_address_view.dart';
import 'package:demo_app/features/home/view/widgets/home_category_view.dart';
import 'package:demo_app/features/home/view/widgets/section_header_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: EdgeInsets.all(5.r),
            padding: EdgeInsets.all(20.r),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchWidget(),
            const HomeAddressView(),
            const HomeCategoryView(),
            const BoxHelper(
              height: 15,
            ),
            const HomeTopDealView(),
            const BoxHelper(
              height: 10,
            ),
            OfferCard(),
          ],
        ),
      ),
    );
  }
}
