import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/widgets/inputs/text_input.dart';

@immutable
class UserAdditionInfoScreen extends StatefulWidget {
  const UserAdditionInfoScreen({
    Key key,
  }) : super(key: key);

  @override
  _UserAdditionInfoScreenState createState() => _UserAdditionInfoScreenState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'UserInfoScreen StatefulWidget',
            ),
          ),
      );
}

class _UserAdditionInfoScreenState extends State<UserAdditionInfoScreen> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _wristGirthController = TextEditingController();
  final FocusNode _weightFocus = FocusNode();
  final FocusNode _heightFocus = FocusNode();
  final FocusNode _wristGirthFocus = FocusNode();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              '_UserAdditionInfoScreenState State<UserAdditionInfoScreen>',
            ),
          ),
      );

  void _nextStep() {}

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
              'Шаг 2 из 2',
              style: TextStyle(
                color: Color(0xff334c71),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Center(
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
                'Вес',
                style: TextStyle(
                  color: Color(0xff334c71),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextInput(
            controller: _weightController,
            focus: _weightFocus,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(_wristGirthFocus),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            suffix: const IgnorePointer(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Text(
                    'Кг',
                    style: TextStyle(
                      color: Color(0xff5392f9),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Рост',
                style: TextStyle(
                  color: Color(0xff334c71),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextInput(
            controller: _heightController,
            focus: _heightFocus,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(_heightFocus),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            suffix: const IgnorePointer(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Text(
                    'См',
                    style: TextStyle(
                      color: Color(0xff5392f9),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Обхват запястья',
                style: TextStyle(
                  color: Color(0xff334c71),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextInput(
            controller: _wristGirthController,
            focus: _wristGirthFocus,
            onEditingComplete: _nextStep,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            suffix: const IgnorePointer(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Text(
                    'См',
                    style: TextStyle(
                      color: Color(0xff5392f9),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
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
              onPressed: _nextStep,
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
}
