import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/profile_screen/models/profile_model.dart';
import 'package:alex_s_application2/widgets/custom_bottom_bar.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
