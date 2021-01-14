import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/screens/user_data/widgets/gender.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/utils/health_balance_icons.dart';
import 'package:health_balance/widgets/text_input.dart';

@immutable
class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({
    Key key,
  }) : super(key: key);

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final TextEditingController _nameController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 50),
          const Center(
            child: Text(
              'Шаг 1 из 2',
              style: TextStyle(
                color: Color(0xff334c71),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Пожалуйста, заполните поля',
                style: TextStyle(
                  color: Color(0xff334c71),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 16.0, left: 30.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Имя',
                style: TextStyle(
                  color: Color(0xff334c71),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextInput(
            controller: _nameController,
            focus: _nameFocus,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Дата рождения',
                style: TextStyle(
                  color: Color(0xff334c71),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const TextInput(
              enabled: false,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Пол',
                style: TextStyle(
                  color: Color(0xff334c71),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GenderButton(
                  icon: HealthBalanceIcons.mars,
                  color: const Color(0xffe0e7f1),
                  iconColor: const Color(0xff5392f9),
                  onTap: () {},
                ),
                GenderButton(
                  icon: HealthBalanceIcons.venus,
                  color: const Color(0xffe7e0f1),
                  iconColor: const Color(0xffff60b2),
                  isSelected: true,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 57.0),
            child: FlatButton(
              color: const Color(0xffff60b2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                NavigationManager.instance.pushNamed('/user_additional_info');
              },
              child: const SizedBox(
                width: 300,
                height: 70,
                child: Align(
                  child: Text(
                    'Далее',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
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
              'UserInfoScreen StatelessWidget',
            ),
          ),
      );
}
