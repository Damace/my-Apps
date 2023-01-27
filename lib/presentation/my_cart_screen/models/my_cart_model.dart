import 'package:get/get.dart';
import 'my_cart_item_model.dart';

class MyCartModel {
  RxList<MyCartItemModel> myCartItemList = RxList.filled(2, MyCartItemModel());
}
