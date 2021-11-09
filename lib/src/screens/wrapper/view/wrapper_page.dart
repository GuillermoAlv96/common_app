import 'package:flutter/cupertino.dart';
import 'package:login/src/models/app/user.dart';
import 'package:login/src/screens/home/view/home_page.dart';
import 'package:login/src/screens/login/view/login_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  final String route = 'wrapper';
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyAppUser>(context);
    if (user.uid == '000000') {
      return LoginPage();
    } else {
      return HomePage();
    }
  }
}
