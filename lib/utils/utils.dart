import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:getxmvvm/res/colors/colors.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    if (current != null) {
      current.unfocus();
    }
    nextFocus.requestFocus(nextFocus);
  }

  static toastMessage(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: AppColor.blackcolor,
      textColor: AppColor.whitecolor,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}
