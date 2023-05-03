import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/data/response/status.dart';
import 'package:getxmvvm/modal/login/userModel.dart';
import 'package:getxmvvm/res/routes/routes_name.dart';
import 'package:getxmvvm/utils/utils.dart';
import 'package:getxmvvm/view_modal/controller/home/home_controller.dart';
import 'package:getxmvvm/view_modal/controller/user_prefrences/user_preferences_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    homeController.setUserListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                userPreference
                    .removeUser(UserModel(token: 'token'))
                    .then((value) {
                  Get.toNamed(RouteName.loginview);
                }).onError((error, stackTrace) {
                  Get.snackbar('error', error.toString());
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Obx(
        () {
          switch (homeController.rxRequestStatus.value) {
            case Status.LOADING:
              return const Center(child: CircularProgressIndicator());
            case Status.ERROR:
              return Utils.snackBar('error', Status.ERROR.toString());
            case Status.COMPLETED:
              return ListView.builder(
                itemCount: homeController.userList.value.data!.length,
                itemBuilder: (context, index) {
                  final fetchData = homeController.userList.value.data![index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                          fetchData.avatar,
                        ),
                      ),
                      title: Text(
                        fetchData.firstName,
                      ),
                      subtitle: Text(
                        fetchData.email,
                      ),
                      trailing: Text(
                        fetchData.id.toString(),
                      ),
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
