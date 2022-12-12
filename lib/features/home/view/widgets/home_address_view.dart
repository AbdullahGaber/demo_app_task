import 'package:flutter/material.dart';

import 'home_address_card.dart';

class HomeAddressView extends StatelessWidget {
  const HomeAddressView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => const HomeAddressCard(
            addressTitle: 'Home Address',
            addressData: 'Mustafa St, No:2 \nStreet x12',
          ),
        ),
      ),
    );
  }
}
