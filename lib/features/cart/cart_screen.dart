import 'package:demo_app/core/components/sized_box_helper.dart';
import 'package:demo_app/core/themes/screen_utility.dart';
import 'package:demo_app/core/themes/themes.dart';
import 'package:demo_app/features/cart/controller/cart_controller.dart';
import 'package:demo_app/features/cart/view/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.r, horizontal: 20.r),
            child: Text(
              'Cart',
              style: MainTheme.headerStyle3.copyWith(fontSize: 20.r),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: GetBuilder<CartController>(builder: (controller) {
              return Column(
                children: List.generate(
                  controller.cart.length,
                  (index) {
                    var cart = controller.cart[index];

                    return CartItem(
                      cartId: cart.id,
                      productName: cart.productName,
                      color: cart.color,
                      productPrice: cart.productPrice,
                      quantity: cart.quantity,
                      quantityType: cart.quantityType,
                    );
                  },
                ),
              );
            }),
          ))
        ],
      ),
    );
  }
}
