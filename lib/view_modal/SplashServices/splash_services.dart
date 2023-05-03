import 'dart:async';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getxmvvm/res/routes/routes_name.dart';
import 'package:getxmvvm/view_modal/controller/user_prefrences/user_preferences_view_model.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();
  void isLogin() {
    userPreference.getUser().then((value) {
      if (value.token.isEmpty || value.token == 'null') {
        Timer(
          const Duration(seconds: 3),
          () => Get.toNamed(
            RouteName.loginview,
          ),
        );
      } else {
        Get.toNamed('/home_view');
      }
    });
  }
}
