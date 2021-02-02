import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/router/router.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/utils/hive_helper.dart';

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

  @override
  void dispose() {
    _appRouter?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    asyncInit();
  }

  Future<void> asyncInit() async {
    await SystemChrome.setEnabledSystemUIOverlays([]);

    await HiveHelper.init();
    _appRouter.userBLoC.add(
      const UserEvent.read(),
    );
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
      value: _appRouter.userBLoC,
      child: MaterialApp(
        navigatorKey: NavigationManager.instance.navigatorKey,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: child,
          );
        },
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: AppColors.background,
          fontFamily: 'SF Pro Display',
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
