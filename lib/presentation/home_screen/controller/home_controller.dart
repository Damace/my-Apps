import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/home_screen/models/home_model.dart';
import 'package:alex_s_application2/widgets/custom_bottom_bar.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
