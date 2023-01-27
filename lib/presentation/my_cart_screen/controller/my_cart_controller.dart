import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/my_cart_screen/models/my_cart_model.dart';
import 'package:alex_s_application2/widgets/custom_bottom_bar.dart';

class MyCartController extends GetxController {
  Rx<MyCartModel> myCartModelObj = MyCartModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
