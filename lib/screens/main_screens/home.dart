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
        physics: const AlwaysScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
          childAspectRatio: 3.3 / 4,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
        children: [
          ActivityCard(
            label: 'ИМТ',
            color: const Color(0xFFE0E8F1),
            imageName: 'apple',
            onTap: () {
              NavigationManager.instance.pushNamed(
                '/activity',
                arguments: const Activity(
                  helpText: 'Ваш  индекс массы тела',
                  data: ActivityValue.bmi,
                  color: Color(0xFFE0E8F1),
                  imageName: 'ic_bmi',
                ),
              );
            },
          ),
          ActivityCard(
            label: 'Вес',
            color: const Color(0xFFE8E0F1),
            imageName: 'scale',
            onTap: () {
              NavigationManager.instance.pushNamed(
                '/activity',
                arguments: const Activity(
                  helpText: 'Ваш идеальный индекс\n массы тела',
                  data: ActivityValue.idealWeight,
                  color: Color(0xFFE0E8F1),
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
                arguments: const Activity(
                  helpText: 'Ваше идеальное артериальное\nдавление',
                  data: ActivityValue.bloodPressure,
                  color: Color(0xFFE0E8F1),
                  imageName: 'ic_weight',
                ),
              );
            },
          ),
          ActivityCard(
            label: 'Килокалории',
            color: const Color(0xFFE2F1E0),
            imageName: 'spinach',
            onTap: () {
              NavigationManager.instance.pushNamed(
                '/activity',
                arguments: const Activity(
                  helpText: 'Количество требуемых\nкалорий в день',
                  data: ActivityValue.calories,
                  color: Color(0xFFE2F1E0),
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
                arguments: const Activity(
                  helpText: 'Количество выпитой воды в день',
                  data: ActivityValue.water,
                  color: Color(0xFFF1E0E0),
                  imageName: 'ic_water',
                  unit: 'л',
                ),
              );
            },
          ),
          ActivityCard(
            label: 'Талия и бедра',
            color: const Color(0xFFFFF1D3),
            imageName: 'hip_waist',
            onTap: () {
              NavigationManager.instance.pushNamed(
                '/activity',
                arguments: const Activity(
                  helpText: 'Расчет соотношения талия - бедра',
                  data: ActivityValue.hipWaist,
                  color: Color(0xFFFFF1D3),
                  imageName: 'ic_hip_waist',
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
