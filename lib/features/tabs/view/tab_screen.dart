import 'package:demo_app/core/themes/screen_utility.dart';
import 'package:demo_app/core/themes/themes.dart';
import 'package:demo_app/features/addresses/controller/address_controller.dart';
import 'package:demo_app/features/cart/controller/cart_controller.dart';
import 'package:demo_app/features/grocery/controller/grocery_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/components/sized_box_helper.dart';
import '../controller/tab_controller.dart';

class TabsScreem extends StatefulWidget {
  const TabsScreem({super.key});

  @override
  State<TabsScreem> createState() => _TabsScreemState();
}

class _TabsScreemState extends State<TabsScreem> {
  var addressesController = Get.put(AddressesController())..fetchAddressData();
  var cartController = Get.put(CartController())..getCartData();
  var groceryController = Get.put(GroceryController())..fetchData();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: TabsController(),
        builder: (controller) {
          return SafeArea(
            top: false,
            child: Scaffold(
              floatingActionButton:
                  GetBuilder<CartController>(builder: (controller) {
                return FloatingActionButton(
                  onPressed: null,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/svg/cart_amount.svg',
                          height: 35.r,
                          width: 35.r,
                        ),
                        Positioned(
                            top: 7.r,
                            child: Text(
                              '\$ ${controller.cartAmount.toStringAsFixed(0)}',
                              style: MainTheme.normalStyle.copyWith(
                                color: Colors.white,
                                fontSize: 10.r,
                              ),
                            ))
                      ],
                    ),
                  ),
                );
              }),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              body: controller.tabs[controller.tabIndex].page,
              bottomNavigationBar: BoxHelper(
                height: 65,
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  onTap: controller.onTabChanged,
                  selectedItemColor: Theme.of(context).primaryColor,
                  // selectedIconTheme: IconThemeData(color: Colors.red),
                  selectedFontSize: 11.r,
                  unselectedFontSize: 11.r,

                  unselectedItemColor: MainStyle.bnbColor,
                  currentIndex: controller.tabIndex,
                  items: List.generate(
                    controller.tabs.length,
                    (index) {
                      var e = controller.tabs[index];
                      return BottomNavigationBarItem(
                        icon: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.r),
                          child: e.iconPath.isEmpty
                              ? const BoxHelper()
                              : SvgPicture.asset(
                                  e.iconPath,
                                  color: index == controller.tabIndex
                                      ? Theme.of(context).primaryColor
                                      : null,
                                  height: 20.r,
                                  width: 20.r,
                                ),
                        ),
                        label: e.title,
                        tooltip: e.title,
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          );
        });
  }
}
