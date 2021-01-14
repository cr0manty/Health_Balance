import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/screens/main_screens/loading_data.dart';
import 'package:health_balance/screens/user_data/user_addition_info.dart';
import 'package:health_balance/screens/user_data/user_info.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/src/blocs/user_data/user_data_bloc.dart';
import 'package:health_balance/src/repositories/user_repository.dart';

class AppRouter {
  UserBLoC userBLoC;

  AppRouter() {
    userBLoC = UserBLoC(const UserRepository());
  }

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const LoadingDataScreen(),
        );
      case '/user_info':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<UserDataBLoC>(
            create: (_) => UserDataBLoC(userBLoC),
            child: const UserInfoScreen(),
          ),
        );
      case '/user_additional_info':
        return MaterialPageRoute(
          builder: (_) => const UserAdditionInfoScreen(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const SizedBox.shrink(),
        );
      default:
        return null;
    }
  }

  void dispose() {
    userBLoC?.close();
  }
}
