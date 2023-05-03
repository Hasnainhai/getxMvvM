import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/modal/login/userModel.dart';
import 'package:getxmvvm/repository/loginRepository/login_repository.dart';
import 'package:getxmvvm/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:getxmvvm/view_modal/controller/user_prefrences/user_preferences_view_model.dart';

class LoginController extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  UserPreference userPreference = UserPreference();
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      Utils.snackBar('success', 'User Successfully Login');
      userPreference.saveUser(UserModel.fromJson(value)).then((value) {
        Get.toNamed('/home_view');
      }).onError((error, stackTrace) {
        Utils.snackBar(
          'error',
          error.toString(),
        );
      });
    }).onError((error, stackTrace) {
      loading.value = false;
      if (kDebugMode) {
        print(error.toString());
      }
      Utils.snackBar('Error', error.toString());
    });
  }
}
