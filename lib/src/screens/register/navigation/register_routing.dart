import 'package:flutter/material.dart';
import 'package:login/src/screens/register/view/register_page.dart';

class RegisterRouting extends StatelessWidget {
  static const routeName = "register";

  const RegisterRouting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegisterPage();
  }
}
