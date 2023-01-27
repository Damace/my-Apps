import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/search_screen/models/search_model.dart';
import 'package:alex_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class SearchController extends GetxController {
  TextEditingController group1305Controller = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1305Controller.dispose();
  }
}
