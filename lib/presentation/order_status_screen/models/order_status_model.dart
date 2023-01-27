import 'package:get/get.dart';
import 'order_status_item_model.dart';

class OrderStatusModel {
  RxList<OrderStatusItemModel> orderStatusItemList =
      RxList.filled(4, OrderStatusItemModel());
}
