import 'package:demo_app/features/addresses/model/models/addresses_model.dart';
import 'package:get/get.dart';

import '../model/api/addresses_api.dart';

class AddressesController extends GetxController {
  List<AddressData> addresses = [];

  void fetchAddressData() {
    var addressesData = AddressesAPI.getAddresses();

    addresses = addressesData.data ?? [];

    update();
  }
}
