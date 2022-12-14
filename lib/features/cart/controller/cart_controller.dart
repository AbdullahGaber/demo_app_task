import 'package:demo_app/features/cart/model/api/cart_api.dart';
import 'package:demo_app/features/cart/model/models/cart_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<CartData> cart = <CartData>[];

  void getCartData() {
    var cartData = CartAPI.getCartData();
    cart = cartData.data!;
    update();
  }

  double get cartAmount {
    var amount = 0.0;

    for (var i = 0; i < cart.length; i++) {
      var cartItem = cart[i];

      amount+=(cartItem.productPrice??0)*(cartItem.quantity??0);
    }

    return amount;
  }

  void incrementCartById({
    required int cartId,
  }) {
    var index = cart.indexWhere((element) => element.id == cartId);

    if (index < 0) {
      return;
    }
    cart[index].quantity = cart[index].quantity! + 1;
    update();
  }

  void decrementCartById({
    required int cartId,
  }) {
    var index = cart.indexWhere((element) => element.id == cartId);

    if (index < 0) {
      return;
    }
    if (cart[index].quantity == 1) {
      return;
    }
    cart[index].quantity = cart[index].quantity! - 1;
    update();
  }
}
