import 'package:flutter/material.dart';
import 'package:health_balance/screens/main_screens/loading_data.dart';
import 'package:health_balance/screens/user_data/user_addition_info.dart';
import 'package:health_balance/screens/user_data/user_info.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const LoadingDataScreen(),
        );
      case '/user_info':
        return MaterialPageRoute(
          builder: (_) => const UserInfoScreen(),
        );
      case '/user_additional_info':
        return MaterialPageRoute(
          builder: (_) => const UserAdditionInfoScreen(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const UserInfoScreen(),
        );
      default:
        return null;
    }
  }

  void dispose() {}
}
