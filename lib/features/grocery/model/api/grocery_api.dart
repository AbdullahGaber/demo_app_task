import 'package:demo_app/features/grocery/model/json/grocery_response.dart';

import '../models/grocery_model.dart';

class GrocertAPI {
  static GroceryModel getGrocery() {
    var model = GroceryModel.fromJson(GroceryResponse.groceryResponse);
    return model;
  }
}
