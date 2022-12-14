import 'package:demo_app/features/addresses/controller/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_address_card.dart';

class HomeAddressView extends StatelessWidget {
    HomeAddressView({
    Key? key,
  }) : super(key: key);

  final AddressesController addressesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          addressesController.addresses.length,
          (index) {
            var address = addressesController.addresses[index];
            return HomeAddressCard(
              addressTitle: address.title,
              addressData: address.addressDetails,
            );
          },
        ),
      ),
    );
  }
}
