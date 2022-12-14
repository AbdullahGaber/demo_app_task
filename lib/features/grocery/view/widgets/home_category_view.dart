import 'package:demo_app/features/grocery/controller/grocery_controller.dart';
import 'package:demo_app/features/grocery/view/widgets/section_header_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'category_item.dart';

class HomeCategoryView extends StatelessWidget {
  HomeCategoryView({super.key});

  final GroceryController grocery = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeaderItem(
          title: 'Explore by Category',
          onViewAllPressed: () {},
          showViewAll: true,
          itemCount: '(${grocery.categories.length})',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              grocery.categories.length,
              (index) {
                var category = grocery.categories[index];
                return CategoryItem(
                  hexColor: category.color,
                  title: category.name,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
