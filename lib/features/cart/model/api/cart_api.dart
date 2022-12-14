import 'package:demo_app/features/cart/model/json/cart_response.dart';

import '../models/cart_model.dart';

class CartAPI {
  static CartModel getCartData() {
    var cartData = CartModel.fromJson(CartResponse.jsonData);

    return cartData;
  }
}
