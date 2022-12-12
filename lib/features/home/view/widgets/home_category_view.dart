import 'package:demo_app/features/home/view/widgets/section_header_item.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';

class HomeCategoryView extends StatelessWidget {
  const HomeCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeaderItem(
          title: 'Explore by Category',
          onViewAllPressed: () {},
          showViewAll: true,
          itemCount: '(12)',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              10,
              (index) => const CategoryItem(
                hexColor: '#F9BDAD',
                title: 'Steak',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
