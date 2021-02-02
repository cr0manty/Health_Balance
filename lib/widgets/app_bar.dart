import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class UserAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(
        color: Color(0xFF334C71),
      ),
      brightness: Brightness.light,
      elevation: 0,
      actions: [
        BlocBuilder<UserBLoC, UserState>(
          builder: (context, state) {
            if (state is ExistUserState || state is ExistFullUserState) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  NavigationManager.instance.pushNamed('/profile');
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 36.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        state.user.fullName,
                        style: const TextStyle(
                          color: Color(0xff334c71),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Image.asset(
                        'assets/images/${state.user.iconName}.png',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'UserAppBar StatelessWidget',
            ),
          ),
      );

  @override
  Size get preferredSize => const Size(60, 50);
}
