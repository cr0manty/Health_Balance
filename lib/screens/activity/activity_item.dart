import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/src/models/activity/activity.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/widgets/app_bar.dart';

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
          height: MediaQuery.of(context).size.height - 200,
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
              Stack(
                alignment: Alignment.center,
                children: [
                  FittedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 8,
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 300,
                            maxWidth: MediaQuery.of(context).size.width - 210,
                          ),
                          child: Text(
                            activity.mainValue(),
                            style: TextStyle(
                              color: const Color(0xff68ca44),
                              fontSize: MediaQuery.of(context).size.width / 8,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (activity.unit != null)
                    Positioned(
                      bottom: 5,
                      right: 0,
                      child: Container(
                        transform: Matrix4.translationValues(25, 0, 0),
                        child: Text(
                          activity.unit,
                          style: const TextStyle(
                            color: Color(0xff334c71),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Image.asset(
                'assets/images/${activity.imageName}.png',
                height: MediaQuery.of(context).size.width / 2,
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
