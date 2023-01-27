import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/write_a_review_screen/models/write_a_review_model.dart';

class WriteAReviewController extends GetxController {
  Rx<WriteAReviewModel> writeAReviewModelObj = WriteAReviewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
