import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/utils/constants.dart';

@immutable
class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key key,
  }) : super(key: key);

  static _SplashScreenState of(BuildContext context) =>
      context.findAncestorStateOfType<_SplashScreenState>();

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'SplashScreen StatefulWidget',
            ),
          ),
      );
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserBLoC>(context).add(const UserEvent.read());
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              '_SplashScreenState State<SplashScreen>',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocListener<UserBLoC, UserState>(
        listener: (context, state) {
          SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

          if (state is EmptyUserState) {
            NavigationManager.instance.pushReplacementNamed('/user_info');
          } else if (state is ExistUserState) {
            NavigationManager.instance.pushReplacementNamed(
              '/user_additional_info',
            );
          } else if (state is ExistFullUserState) {
            NavigationManager.instance.pushReplacementNamed('/home');
          }
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/splash_background.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/logo.png',
            ),
          ],
        ),
      ),
    );
  }
}
