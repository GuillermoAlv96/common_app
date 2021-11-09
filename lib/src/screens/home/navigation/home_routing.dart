import 'package:flutter/material.dart';
import 'package:login/src/screens/home/view/home_page.dart';

class HomeRouting extends StatelessWidget {
  static const routeName = "home";
  const HomeRouting({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
