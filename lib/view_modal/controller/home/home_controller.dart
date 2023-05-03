import 'package:get/get.dart';
import 'package:getxmvvm/data/response/status.dart';
import 'package:getxmvvm/modal/home/homeModel.dart';
import 'package:getxmvvm/repository/homeRepository/home_repository.dart';

class HomeController extends GetxController {
  final _api = HomeRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserList().obs;

  void setRxRequestStatus(Status value) {
    rxRequestStatus.value = value;
  }

  void setUserList(UserList _value) {
    userList.value = _value;
  }

  void setUserListApi() {
    _api.homeApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
    });
  }
}
