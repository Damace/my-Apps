import 'package:get/get.dart';
import 'checkout_item_model.dart';

class CheckoutModel {
  RxList<CheckoutItemModel> checkoutItemList =
      RxList.filled(4, CheckoutItemModel());
}
