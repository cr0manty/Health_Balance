import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/screens/main_screens/widgets/activity_card.dart';
import 'package:health_balance/src/models/activity/activity.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/widgets/app_bar.dart';

@immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const UserAppBar(),
      body: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
          childAspectRatio: 3.3 / 4,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
        children: [
          ActivityCard(
            label: 'Вес',
            color: const Color(0xFFE0E8F1),
            imageName: 'scale',
            onTap: () {
              NavigationManager.instance.pushNamed(
                '/activity',
                arguments: Activity(
                  helpText: 'Ваш идеальный индекс\n массы тела',
                  mainValue: () => '78',
                  color: const Color(0xFFE0E8F1),
                  imageName: 'ic_weight',
                  unit: 'кг',
                ),
              );
            },
          ),
          ActivityCard(
            label: 'Давление',
            color: const Color(0xFFE8E0F1),
            imageName: 'arm',
            onTap: () {
              NavigationManager.instance.pushNamed(
                '/activity',
                arguments: Activity(
                  helpText: 'Ваш идеальный индекс\n массы тела',
                  mainValue: () => '50-55',
                  color: const Color(0xFFE0E8F1),
                  imageName: 'ic_weight',
                ),
              );
            },
          ),
          ActivityCard(
            label: 'Киллокалории',
            color: const Color(0xFFE2F1E0),
            imageName: 'spinach',
            onTap: () {
              NavigationManager.instance.pushNamed(
                '/activity',
                arguments: Activity(
                  helpText: 'Количество требуемых\nкалорий в день',
                  mainValue: () => '1050',
                  color: const Color(0xFFE2F1E0),
                  imageName: 'ic_calories',
                ),
              );
            },
          ),
          ActivityCard(
            label: 'Вода',
            color: const Color(0xFFF1E0E0),
            imageName: 'water-bottle',
            onTap: () {
              NavigationManager.instance.pushNamed(
                '/activity',
                arguments: Activity(
                  helpText: 'Количество выпитой воды в день',
                  mainValue: () => '2',
                  color: const Color(0xFFF1E0E0),
                  imageName: 'ic_water',
                  unit: 'л',
                ),
              );
            },
          ),
        ],
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
              'HomeScreen StatelessWidget',
            ),
          ),
      );
}
