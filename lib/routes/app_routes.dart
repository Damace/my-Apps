import 'package:alex_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:alex_s_application2/presentation/splash_screen/binding/splash_binding.dart';
import 'package:alex_s_application2/presentation/onbording_one_screen/onbording_one_screen.dart';
import 'package:alex_s_application2/presentation/onbording_one_screen/binding/onbording_one_binding.dart';
import 'package:alex_s_application2/presentation/onbording_two_screen/onbording_two_screen.dart';
import 'package:alex_s_application2/presentation/onbording_two_screen/binding/onbording_two_binding.dart';
import 'package:alex_s_application2/presentation/onbording_three_screen/onbording_three_screen.dart';
import 'package:alex_s_application2/presentation/onbording_three_screen/binding/onbording_three_binding.dart';
import 'package:alex_s_application2/presentation/sign_up_sign_in_screen/sign_up_sign_in_screen.dart';
import 'package:alex_s_application2/presentation/sign_up_sign_in_screen/binding/sign_up_sign_in_binding.dart';
import 'package:alex_s_application2/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:alex_s_application2/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:alex_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:alex_s_application2/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:alex_s_application2/presentation/information_screen/information_screen.dart';
import 'package:alex_s_application2/presentation/information_screen/binding/information_binding.dart';
import 'package:alex_s_application2/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:alex_s_application2/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:alex_s_application2/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:alex_s_application2/presentation/verification_code_screen/binding/verification_code_binding.dart';
import 'package:alex_s_application2/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:alex_s_application2/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:alex_s_application2/presentation/explore_shop_screen/explore_shop_screen.dart';
import 'package:alex_s_application2/presentation/explore_shop_screen/binding/explore_shop_binding.dart';
import 'package:alex_s_application2/presentation/home_screen/home_screen.dart';
import 'package:alex_s_application2/presentation/home_screen/binding/home_binding.dart';
import 'package:alex_s_application2/presentation/popular_items_screen/popular_items_screen.dart';
import 'package:alex_s_application2/presentation/popular_items_screen/binding/popular_items_binding.dart';
import 'package:alex_s_application2/presentation/product_view_screen/product_view_screen.dart';
import 'package:alex_s_application2/presentation/product_view_screen/binding/product_view_binding.dart';
import 'package:alex_s_application2/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:alex_s_application2/presentation/my_cart_screen/binding/my_cart_binding.dart';
import 'package:alex_s_application2/presentation/checkout_screen/checkout_screen.dart';
import 'package:alex_s_application2/presentation/checkout_screen/binding/checkout_binding.dart';
import 'package:alex_s_application2/presentation/complete_screen/complete_screen.dart';
import 'package:alex_s_application2/presentation/complete_screen/binding/complete_binding.dart';
import 'package:alex_s_application2/presentation/tracking_order_screen/tracking_order_screen.dart';
import 'package:alex_s_application2/presentation/tracking_order_screen/binding/tracking_order_binding.dart';
import 'package:alex_s_application2/presentation/order_status_screen/order_status_screen.dart';
import 'package:alex_s_application2/presentation/order_status_screen/binding/order_status_binding.dart';
import 'package:alex_s_application2/presentation/reviews_screen/reviews_screen.dart';
import 'package:alex_s_application2/presentation/reviews_screen/binding/reviews_binding.dart';
import 'package:alex_s_application2/presentation/write_a_review_screen/write_a_review_screen.dart';
import 'package:alex_s_application2/presentation/write_a_review_screen/binding/write_a_review_binding.dart';
import 'package:alex_s_application2/presentation/settings_screen/settings_screen.dart';
import 'package:alex_s_application2/presentation/settings_screen/binding/settings_binding.dart';
import 'package:alex_s_application2/presentation/search_screen/search_screen.dart';
import 'package:alex_s_application2/presentation/search_screen/binding/search_binding.dart';
import 'package:alex_s_application2/presentation/notification_screen/notification_screen.dart';
import 'package:alex_s_application2/presentation/notification_screen/binding/notification_binding.dart';
import 'package:alex_s_application2/presentation/discount_items_screen/discount_items_screen.dart';
import 'package:alex_s_application2/presentation/discount_items_screen/binding/discount_items_binding.dart';
import 'package:alex_s_application2/presentation/social_account_link_screen/social_account_link_screen.dart';
import 'package:alex_s_application2/presentation/social_account_link_screen/binding/social_account_link_binding.dart';
import 'package:alex_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:alex_s_application2/presentation/profile_screen/binding/profile_binding.dart';
import 'package:alex_s_application2/presentation/chat_screen/chat_screen.dart';
import 'package:alex_s_application2/presentation/chat_screen/binding/chat_binding.dart';
import 'package:alex_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:alex_s_application2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onbordingOneScreen = '/onbording_one_screen';

  static const String onbordingTwoScreen = '/onbording_two_screen';

  static const String onbordingThreeScreen = '/onbording_three_screen';

  static const String signUpSignInScreen = '/sign_up_sign_in_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String informationScreen = '/information_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String exploreShopScreen = '/explore_shop_screen';

  static const String homeScreen = '/home_screen';

  static const String popularItemsScreen = '/popular_items_screen';

  static const String productViewScreen = '/product_view_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String completeScreen = '/complete_screen';

  static const String trackingOrderScreen = '/tracking_order_screen';

  static const String orderStatusScreen = '/order_status_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String writeAReviewScreen = '/write_a_review_screen';

  static const String settingsScreen = '/settings_screen';

  static const String searchScreen = '/search_screen';

  static const String notificationScreen = '/notification_screen';

  static const String discountItemsScreen = '/discount_items_screen';

  static const String socialAccountLinkScreen = '/social_account_link_screen';

  static const String profileScreen = '/profile_screen';

  static const String chatScreen = '/chat_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onbordingOneScreen,
      page: () => OnbordingOneScreen(),
      bindings: [
        OnbordingOneBinding(),
      ],
    ),
    GetPage(
      name: onbordingTwoScreen,
      page: () => OnbordingTwoScreen(),
      bindings: [
        OnbordingTwoBinding(),
      ],
    ),
    GetPage(
      name: onbordingThreeScreen,
      page: () => OnbordingThreeScreen(),
      bindings: [
        OnbordingThreeBinding(),
      ],
    ),
    GetPage(
      name: signUpSignInScreen,
      page: () => SignUpSignInScreen(),
      bindings: [
        SignUpSignInBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: informationScreen,
      page: () => InformationScreen(),
      bindings: [
        InformationBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationCodeScreen,
      page: () => VerificationCodeScreen(),
      bindings: [
        VerificationCodeBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: exploreShopScreen,
      page: () => ExploreShopScreen(),
      bindings: [
        ExploreShopBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: popularItemsScreen,
      page: () => PopularItemsScreen(),
      bindings: [
        PopularItemsBinding(),
      ],
    ),
    GetPage(
      name: productViewScreen,
      page: () => ProductViewScreen(),
      bindings: [
        ProductViewBinding(),
      ],
    ),
    GetPage(
      name: myCartScreen,
      page: () => MyCartScreen(),
      bindings: [
        MyCartBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: completeScreen,
      page: () => CompleteScreen(),
      bindings: [
        CompleteBinding(),
      ],
    ),
    GetPage(
      name: trackingOrderScreen,
      page: () => TrackingOrderScreen(),
      bindings: [
        TrackingOrderBinding(),
      ],
    ),
    GetPage(
      name: orderStatusScreen,
      page: () => OrderStatusScreen(),
      bindings: [
        OrderStatusBinding(),
      ],
    ),
    GetPage(
      name: reviewsScreen,
      page: () => ReviewsScreen(),
      bindings: [
        ReviewsBinding(),
      ],
    ),
    GetPage(
      name: writeAReviewScreen,
      page: () => WriteAReviewScreen(),
      bindings: [
        WriteAReviewBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: discountItemsScreen,
      page: () => DiscountItemsScreen(),
      bindings: [
        DiscountItemsBinding(),
      ],
    ),
    GetPage(
      name: socialAccountLinkScreen,
      page: () => SocialAccountLinkScreen(),
      bindings: [
        SocialAccountLinkBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
