import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/reviews_screen/models/reviews_model.dart';

class ReviewsController extends GetxController {
  Rx<ReviewsModel> reviewsModelObj = ReviewsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
