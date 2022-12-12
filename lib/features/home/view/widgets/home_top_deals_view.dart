import 'package:demo_app/features/home/view/widgets/section_header_item.dart';
import 'package:flutter/material.dart';

import 'home_top_deals_item.dart';

class HomeTopDealView extends StatelessWidget {
  const HomeTopDealView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeaderItem(
          title: 'Deals of the day',
          onViewAllPressed: null,
          showViewAll: false,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              4,
              (index) => const HomeTopDealsItem(),
            ),
          ),
        ),
      ],
    );
  }
}
