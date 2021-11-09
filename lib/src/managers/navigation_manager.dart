import 'package:flutter/cupertino.dart';
import 'package:login/src/managers/route_manager.dart';
import 'package:login/src/screens/home/view/home_page.dart';
import 'package:login/src/screens/login/view/login_page.dart';
import 'package:login/src/screens/register/view/register_page.dart';
import 'package:login/src/screens/wrapper/view/wrapper_page.dart';

class NavigationManager {

  void showWrapper(BuildContext context) {
    Navigator.pushReplacementNamed(context, Wrapper().route,arguments: ArgumentsModel(RouteType.wrapper,null));
  }

  void showLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, LoginPage().route,arguments: ArgumentsModel(RouteType.login,null));
  }

  void showRegister(BuildContext context) {
    Navigator.pushReplacementNamed(context, RegisterPage().route,arguments: ArgumentsModel(RouteType.register, null));
  }

  void showHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, HomePage().route,arguments: ArgumentsModel(RouteType.home,null));
  }
}
