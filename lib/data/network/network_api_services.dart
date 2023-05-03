import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getxmvvm/data/app_exceptions.dart';
import 'package:getxmvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));

      responseJson = returnResponseJson(response);
    } on SocketException {
      throw InternetExceptions();
    } on TimeoutException {
      throw TimeoutException();
    } catch (e) {
      Get.snackbar('Error during get Api', e.toString());
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url), body: data).timeout(
            const Duration(seconds: 10),
          );

      responseJson = returnResponseJson(response);
    } on SocketException {
      throw InternetExceptions();
    } on TimeoutException {
      throw TimeoutException();
    } catch (e) {
      Get.snackbar('Error during get Api', e.toString());
    }
    return responseJson;
  }

  dynamic returnResponseJson(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException();
      default:
        throw FetchDataException();
    }
  }
}
