import 'package:demo_app/features/grocery/view/widgets/section_header_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/grocery_controller.dart';
import 'home_top_deals_item.dart';

class HomeTopDealView extends StatelessWidget {
  HomeTopDealView({
    Key? key,
  }) : super(key: key);

  final GroceryController grocery = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              grocery.todayDeals.length,
              (index) {
                var deal = grocery.todayDeals[index];
                return HomeTopDealsItem(
                  onFavStateChanged: () =>
                      grocery.changeProductFavById(productId: deal.productId),
                  isFav: deal.isFav,
                  color: deal.color,
                  distance: deal.distance,
                  name: deal.name,
                  newPrice: deal.newPrice,
                  oldPrice: deal.oldPrice,
                  quantityType: deal.quantityType,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
