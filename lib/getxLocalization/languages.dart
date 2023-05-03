import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter your email',
          'internet_exception':
              'we are unable to show result \n please check your data\n connection',
          'general_exception':
              'we are unable to show results \n please check your connection\n and try again',
          'Login_View': 'Login_View',
          'welcome_screen': 'welcome \n back',
          'Email': 'Enter email',
          'password': 'Enter password',
          'login': 'Login',
        }
      };
}
