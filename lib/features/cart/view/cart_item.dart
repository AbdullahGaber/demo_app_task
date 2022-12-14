import 'package:demo_app/core/extensions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/components/sized_box_helper.dart';
import '../../../core/themes/screen_utility.dart';
import '../../../core/themes/themes.dart';
import '../controller/cart_controller.dart';
import 'increment_item.dart';

class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.color,
    required this.productName,
    required this.productPrice,
    required this.quantityType,
    required this.quantity,
    this.cartId,
  }) : super(key: key);
  final String? color;
  final String? productName;
  final double? productPrice;
  final String? quantityType;
  final int? quantity;
  final int? cartId;

  final CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 65.r,
          width: 65.r,
          margin: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: color == null
                ? MainStyle.primaryColor
                : HexColor.fromHex(
                    color!,
                  ),
          ),
        ),
        const BoxHelper(
          width: 7,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoxHelper(
              width: 60,
              child: Text(
                productName ?? '',
                overflow: TextOverflow.ellipsis,
                style: MainTheme.headerStyle3.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const BoxHelper(
              height: 10,
            ),
            Text(
              quantityType ?? '',
              style: MainTheme.normalStyle,
            ),
            const BoxHelper(
              height: 10,
            ),
            Text(
              '\$ ${((productPrice ?? 0) * (quantity ?? 0)).toStringAsFixed(2).replaceAll('.00', '')}',
              style: MainTheme.headerStyle3.copyWith(
                  fontWeight: FontWeight.normal, color: MainStyle.primaryColor),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            IncrementItem(
              onPressed: () =>
                  cartController.decrementCartById(cartId: cartId!),
              icons: Icons.remove,
            ),
            Text(
              '$quantity',
              style: MainTheme.headerStyle3,
            ),
            IncrementItem(
              onPressed: () =>
                  cartController.incrementCartById(cartId: cartId!),
              icons: Icons.add,
            ),
          ],
        )
      ],
    );
  }
}
