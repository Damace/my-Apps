import 'package:get/get.dart';
import 'popular_items_item_model.dart';

class PopularItemsModel {
  RxList<PopularItemsItemModel> popularItemsItemList =
      RxList.filled(6, PopularItemsItemModel());
}
