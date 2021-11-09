import 'package:flutter/material.dart';
import 'package:login/src/providers/routing_provider.dart';

enum RouteType { splash, wrapper, login, register, home }

extension RouteTypeExtension on RouteType {
  String get name {
    switch (this) {
      case RouteType.splash:
        return "splash";
      case RouteType.wrapper:
        return "wrapper";
      case RouteType.login:
        return "login";
      case RouteType.register:
        return "register";
      case RouteType.home:
        return "home";
    }
  }
}

class ArgumentsModel {
  late final RouteType routeType;
  late final Object? parameters;

  ArgumentsModel(this.routeType, this.parameters);
}

class RouteManager {
  late final RoutingProvider _routingProvider;

  RouteManager(RoutingProvider routingProvider) {
    this._routingProvider = routingProvider;
  }

  Route createRoute(Object? arguments) {
    if (arguments != null && arguments is ArgumentsModel) {
      switch (arguments.routeType) {
        case RouteType.wrapper:
          return _getSlidePageRoute(
              view: _routingProvider.wrapperRouting(),
              routeName: arguments.routeType.name,
              close: true);

        case RouteType.login:
          return _getSlidePageRoute(
              view: _routingProvider.loginRouting(),
              routeName: arguments.routeType.name);

        case RouteType.register:
          return _getSlidePageRoute(
              view: _routingProvider.registerRouting(),
              routeName: arguments.routeType.name);

        case RouteType.home:
          return _getSlidePageRoute(
              view: _routingProvider.homeRouting(),
              routeName: arguments.routeType.name);

        default:
          return _getSlidePageRoute(
              view: _routingProvider.wrapperRouting(),
              routeName: RouteType.wrapper.name);
      }
    } else {
      // return login if fails
      return _getFadePageRoute(
          view: _routingProvider.wrapperRouting(),
          routeName: RouteType.wrapper.name);
    }
  }

  PageRouteBuilder _getSlidePageRoute(
      {required Widget view, bool close = false, required String routeName}) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, animation, secondaryAnimation) => view,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(close ? -1.0 : 1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.decelerate;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder _getFadePageRoute(
      {required Widget view,
      int durationInMillis = 1500,
      required String routeName}) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      transitionDuration: Duration(milliseconds: durationInMillis),
      pageBuilder: (context, animation, secondaryAnimation) => view,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = 0.0;
        var end = 1.0;
        var curve = Curves.decelerate;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return FadeTransition(
          opacity: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder _getSlideVerticalPageRoute(
      {required Widget view, required String routeName}) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, animation, secondaryAnimation) => view,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.decelerate;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}
