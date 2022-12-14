import 'package:demo_app/core/components/sized_box_helper.dart';
import 'package:demo_app/features/cart/cart_screen.dart';
import 'package:demo_app/features/grocery/view/home_screen.dart';
import 'package:get/get.dart';
import '../model/tabs_model.dart';

class TabsController extends GetxController {
  List<TabsModel> tabs = const [
    TabsModel(
      iconPath: 'assets/icons/svg/grocery.svg',
      page: HomeScreen(),
      title: 'Grocery',
    ),
    TabsModel(
      iconPath: 'assets/icons/svg/notifications.svg',
      page: BoxHelper(),
      title: 'News',
    ),
    TabsModel(
      iconPath: '',
      page: BoxHelper(),
      title: '',
    ),
    TabsModel(
      iconPath: 'assets/icons/svg/favorites.svg',
      page: BoxHelper(),
      title: 'Favorites',
    ),
    TabsModel(
      iconPath: 'assets/icons/svg/wallet.svg',
      page: CartScreen(),
      title: 'Cart',
    ),
  ];
  int tabIndex = 0;

  void onTabChanged(int index) {
    if (index == 0 || index == 4) {
      tabIndex = index;
      update();
    }
  }
}
