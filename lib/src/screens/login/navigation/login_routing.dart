import 'package:flutter/material.dart';
import 'package:login/src/managers/navigation_manager.dart';
import 'package:login/src/screens/login/view/login_page.dart';

class LoginRouting extends StatelessWidget {
  static const routeName = "login";

  LoginRouting(NavigationManager navigationManager, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
