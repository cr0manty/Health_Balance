import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/router/router.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/src/repositories/user_repository.dart';
import 'package:health_balance/utils/constants.dart';

@immutable
class HealthBalanceApp extends StatefulWidget {
  const HealthBalanceApp({
    Key key,
  }) : super(key: key);

  static _HealthBalanceAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_HealthBalanceAppState>();

  @override
  State<HealthBalanceApp> createState() => _HealthBalanceAppState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'HealthBalanceApp StatefulWidget',
            ),
          ),
      );
}

class _HealthBalanceAppState extends State<HealthBalanceApp> {
  final AppRouter _appRouter = AppRouter();
  UserBLoC _userBLoC;

  @override
  void dispose() {
    _userBLoC?.close();
    _appRouter?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _userBLoC = UserBLoC(const UserRepository());
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              '_HealthBalanceAppState State<HealthBalanceApp>',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBLoC>.value(
      value: _userBLoC,
      child: MaterialApp(
        navigatorKey: NavigationManager.instance.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            backgroundColor: AppColors.background,
            fontFamily: 'SF Pro Display'),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
