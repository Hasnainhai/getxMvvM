import 'package:getxmvvm/data/network/network_api_services.dart';
import 'package:getxmvvm/modal/home/homeModel.dart';
import 'package:getxmvvm/res/appUrl/app_url.dart';

class HomeRepository {
  final _apiResponse = NetworkApiServices();

  Future<UserList> homeApi() async {
    dynamic response = await _apiResponse.getApi(AppUrl.userListApi);
    return UserList.fromJson(response);
  }
}
