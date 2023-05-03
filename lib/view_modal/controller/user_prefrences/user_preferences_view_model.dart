import 'package:getxmvvm/modal/home/homeModel.dart';
import 'package:getxmvvm/modal/login/userModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../modal/home/homeModel.dart';

class UserPreference {
  Future<bool> saveUser(UserModel userModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', userModel.token.toString());
    return true;
  }

  Future<UserModel> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString('token');

    return UserModel(
      token: token.toString(),
    );
  }

  Future<bool> removeUser(UserModel userModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
