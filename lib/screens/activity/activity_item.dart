import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/src/models/activity/activity.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/widgets/app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class ActivityItemScreen extends StatelessWidget {
  final Activity activity;

  const ActivityItemScreen({
    @required this.activity,
    Key key,
  })  : assert(activity != null, 'Field activity must not be null'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const UserAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: activity.color,
            boxShadow: const [
              BoxShadow(
                color: Color(0x19000000),
                offset: Offset(0, 1),
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Text(
                  activity.helpText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xff334c71),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            offset: Offset(0, 1),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 8,
                      ),
                      child: BlocBuilder<UserBLoC, UserState>(
                          builder: (context, state) {
                        return Text(
                          activity.data.value(state.user),
                          maxLines: 2,
                          style: TextStyle(
                            color: const Color(0xff68ca44),
                            fontSize: MediaQuery.of(context).size.width / 8,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      }),
                    ),
                    if (activity.unit != null)
                      Positioned(
                        bottom: 5,
                        right: -20,
                        child: Text(
                          activity.unit,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Color(0xff334c71),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/${activity.imageName}.png',
                height: MediaQuery.of(context).size.height / 3.2,
                width: MediaQuery.of(context).size.width / 2,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'ActivityItemScreen StatelessWidget',
            ),
          ),
      );
}
