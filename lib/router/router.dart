import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/screens/activity/activity_item.dart';
import 'package:health_balance/screens/main_screens/home.dart';
import 'package:health_balance/screens/main_screens/splash.dart';
import 'package:health_balance/screens/profile/user_profile.dart';
import 'package:health_balance/screens/user_data/user_addition_info.dart';
import 'package:health_balance/screens/user_data/user_info.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/src/blocs/user_addition_data/user_addition_data_bloc.dart';
import 'package:health_balance/src/blocs/user_data/user_data_bloc.dart';
import 'package:health_balance/src/models/activity/activity.dart';
import 'package:health_balance/src/repositories/user_repository.dart';

class AppRouter {
  UserBLoC _userBLoC;

  AppRouter() {
    _userBLoC = UserBLoC(const UserRepository());
  }

  UserBLoC get userBLoC => _userBLoC;

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case '/user_info':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<UserDataBLoC>(
            create: (_) => UserDataBLoC(_userBLoC),
            child: const UserInfoScreen(),
          ),
        );
      case '/user_additional_info':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<UserAdditionDataBLoC>(
            create: (_) => UserAdditionDataBLoC(_userBLoC),
            child: const UserAdditionInfoScreen(),
          ),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<UserAdditionDataBLoC>(
            create: (_) => UserAdditionDataBLoC(_userBLoC),
            child: const UserProfile(),
          ),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/activity':
        final Activity activity = settings.arguments;
        assert(activity != null, 'Arguments must contains Activity item model');

        return MaterialPageRoute(
          builder: (_) => ActivityItemScreen(
            activity: activity,
          ),
        );
      default:
        return null;
    }
  }

  void dispose() {
    _userBLoC?.close();
  }
}
