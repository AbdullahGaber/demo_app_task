import 'package:get/get.dart';

import '../model/models/grocery_model.dart';
import '../model/api/grocery_api.dart';

class GroceryController extends GetxController {
  List<TodayDeal> todayDeals = [];
  List<Categories> categories = [];
  Banner? banner;

  void fetchData() {
    var data = GrocertAPI.getGrocery();
    todayDeals = data.todayDeals ?? [];
    categories = data.category ?? [];
    banner = data.banner;
    update();
  }

  changeProductFavById({
    required int? productId,
  }) {
    var index =
        todayDeals.indexWhere((element) => element.productId == productId);
    if (index < 0) {
      return;
    }
    todayDeals[index].isFav = !(todayDeals[index].isFav ?? false);
    update();
  }
}
