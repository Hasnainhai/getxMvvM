import 'package:get/route_manager.dart';
import 'package:getxmvvm/res/routes/routes_name.dart';
import 'package:getxmvvm/view/home/home_view.dart';
import 'package:getxmvvm/view/loginView/login_view.dart';
import 'package:getxmvvm/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RouteName.loginview,
          page: () => const LoginView(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RouteName.homeview,
          page: () => const HomeView(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
      ];
}
