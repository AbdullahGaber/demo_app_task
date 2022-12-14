import '../json/addresses_response.dart';
import '../models/addresses_model.dart';

class AddressesAPI {
  static AddressesModel getAddresses() {
    var model = AddressesModel.fromJson(AddressResponse.addressResponse);

    return model;
  }
}
