import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/src/blocs/user_addition_data/user_addition_data_bloc.dart';
import 'package:health_balance/src/formz/user_data/height.dart';
import 'package:health_balance/src/formz/user_data/weight.dart';
import 'package:health_balance/src/formz/user_data/wrist_girth.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/widgets/inputs/text_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';

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
  UserAdditionDataBLoC _userAdditionDataBLoC;

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

  void _nextStep() {
    FocusScope.of(context).unfocus();
    _userAdditionDataBLoC.add(
      const UserAdditionDataEvent.submit(),
    );
  }

  @override
  void initState() {
    super.initState();
    _userAdditionDataBLoC = BlocProvider.of<UserAdditionDataBLoC>(context);
  }

  @override
  void dispose() {
    _wristGirthController?.dispose();
    _weightController?.dispose();
    _heightController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocListener<UserBLoC, UserState>(
        listenWhen: (previous, current) =>
            NavigationManager.instance.route != '/home',
        listener: (context, state) {
          if (state is ExistFullUserState) {
            NavigationManager.instance.pushNamedAndRemoveUntil('/home');
          }
        },
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          behavior: HitTestBehavior.opaque,
          child: ListView(
            physics: const ClampingScrollPhysics(),
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
                validator: const Weight.pure(),
                helpText: 'Ваш вес может быть '
                    'от ${Weight.minWeight} '
                    'до ${Weight.maxWeight}',
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(_wristGirthFocus),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _userAdditionDataBLoC.add(
                    UserAdditionDataEvent.weightChanged(value),
                  );
                },
                suffix: IgnorePointer(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        'Кг',
                        style: TextStyle(
                          color: AppColors.blueConstant,
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
                validator: const Height.pure(),
                helpText: 'Ваш рост может быть '
                    'от ${Height.minHeight} '
                    'до ${Height.maxHeight}',
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(_heightFocus),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _userAdditionDataBLoC.add(
                    UserAdditionDataEvent.heightChanged(value),
                  );
                },
                suffix: IgnorePointer(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        'См',
                        style: TextStyle(
                          color: AppColors.blueConstant,
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
                validator: const WristGirth.pure(),
                helpText: 'Ваш обхват запястья может быть '
                    'от ${WristGirth.minWristGirth} '
                    'до ${WristGirth.maxWristGirth}',
                onEditingComplete: _nextStep,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _userAdditionDataBLoC.add(
                    UserAdditionDataEvent.wristGirthChanged(value),
                  );
                },
                suffix: IgnorePointer(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        'См',
                        style: TextStyle(
                          color: AppColors.blueConstant,
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
                child: BlocBuilder<UserAdditionDataBLoC, UserAdditionDataState>(
                  buildWhen: (previous, current) =>
                      previous.status != current.status,
                  builder: (context, state) {
                    return FlatButton(
                      color: const Color(0xffff60b2),
                      disabledColor: const Color(0xffff60b2).withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: state.isValid ? _nextStep : null,
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
