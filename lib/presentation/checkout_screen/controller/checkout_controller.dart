import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/checkout_screen/models/checkout_model.dart';

class CheckoutController extends GetxController {
  Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
