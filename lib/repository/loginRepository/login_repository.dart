import 'package:getxmvvm/data/network/network_api_services.dart';
import 'package:getxmvvm/res/appUrl/app_url.dart';

class LoginRepository {
  final _apiResponse = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic respose = await _apiResponse.postApi(data, AppUrl.loginApi);
    return respose;
  }
}
