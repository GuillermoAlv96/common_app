import 'package:login/src/managers/navigation_manager.dart';
import 'package:login/src/screens/home/navigation/home_routing.dart';
import 'package:login/src/screens/login/navigation/login_routing.dart';
import 'package:login/src/screens/register/navigation/register_routing.dart';
import 'package:login/src/screens/wrapper/navigation/wrapper_routing.dart';
import 'package:login/src/screens/wrapper/view/wrapper_page.dart';

class RoutingProvider {
  late final NavigationManager _navigationManager;

  RoutingProvider() {
    _navigationManager = NavigationManager();
  }
  WrapperRouting wrapperRouting(){
    return WrapperRouting();
  }

  LoginRouting loginRouting() {
    return LoginRouting(_navigationManager);
  }

  RegisterRouting registerRouting(){
    return RegisterRouting();
  }

  HomeRouting homeRouting(){
    return HomeRouting();
  }








}
