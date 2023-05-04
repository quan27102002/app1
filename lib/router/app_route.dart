import 'package:clone_myapp/modules/auth/screens/login_screen.dart';
import 'package:clone_myapp/modules/auth/screens/sign_up_screen.dart';
import 'package:clone_myapp/router/route_name.dart';
import 'package:flutter/material.dart';

class AppRoute {
  AppRoute._instance();
  static final AppRoute instance = AppRoute._instance();
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return MaterialPageRoute(
            builder: (context) => const LoginScreen(),
            settings: RouteSettings(name: RouteName.login));

      case RouteName.signUp:
        return MaterialPageRoute(
            builder: (context) =>  SignUpScreen(),
            settings: RouteSettings(name: RouteName.signUp));
      default:
    }
    return null;
  }
}
