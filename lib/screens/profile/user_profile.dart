import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/src/blocs/user_addition_data/user_addition_data_bloc.dart';
import 'package:health_balance/src/formz/user_data/height.dart';
import 'package:health_balance/src/formz/user_data/hip_girth.dart';
import 'package:health_balance/src/formz/user_data/waist_circumference.dart';
import 'package:health_balance/src/formz/user_data/weight.dart';
import 'package:health_balance/src/formz/user_data/wrist_girth.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/widgets/inputs/text_input.dart';

@immutable
class UserProfile extends StatefulWidget {
  const UserProfile({
    Key key,
  }) : super(key: key);

  static _UserProfileState of(BuildContext context) =>
      context.findAncestorStateOfType<_UserProfileState>();

  @override
  State<UserProfile> createState() => _UserProfileState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'UserProfile StatefulWidget',
            ),
          ),
      );
}

class _UserProfileState extends State<UserProfile> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _wristGirthController = TextEditingController();
  final TextEditingController _waistCircumferenceController =
      TextEditingController();
  final TextEditingController _hipGirthController = TextEditingController();
  final FocusNode _waistCircumferenceFocus = FocusNode();
  final FocusNode _hipGirthFocus = FocusNode();
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
              '_UserProfileState State<UserProfile>',
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
    final user = BlocProvider.of<UserBLoC>(context).state.user;
    _userAdditionDataBLoC.add(
      UserAdditionDataEvent.loadData(user.userData),
    );
    _heightController.text = user.userData.height.toInt().toString();
    _weightController.text = user.userData.weight.toInt().toString();
    _wristGirthController.text = user.userData.wristGirth.toInt().toString();
    _waistCircumferenceController.text =
        user.userData.waistCircumference.toInt().toString();
    _hipGirthController.text = user.userData.hipGirth.toInt().toString();
  }

  @override
  void dispose() {
    _wristGirthController?.dispose();
    _weightController?.dispose();
    _heightController?.dispose();
    _hipGirthController?.dispose();
    _waistCircumferenceController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Color(0xFF334C71),
        ),
        brightness: Brightness.light,
        elevation: 0,
        actions: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              BlocProvider.of<UserBLoC>(context).add(const UserEvent.delete());
              NavigationManager.instance.pushNamedAndRemoveUntil('/user_info');
            },
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 36.0),
                child: Text(
                  'Выйти',
                  style: TextStyle(
                    color: Color(0xff334c71),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.background,
      body: BlocListener<UserBLoC, UserState>(
        listenWhen: (previous, current) =>
            NavigationManager.instance.route != '/',
        listener: (context, state) {
          if (state is ExistFullUserState) {
            NavigationManager.instance.pushNamedAndRemoveUntil('/home');
          }
        },
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: FocusScope.of(context).unfocus,
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Center(
                  child: Text(
                    'Редактировать данные',
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
              const Padding(
                padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Обхват талии',
                    style: TextStyle(
                      color: Color(0xff334c71),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              TextInput(
                controller: _waistCircumferenceController,
                focus: _waistCircumferenceFocus,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(_hipGirthFocus),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _userAdditionDataBLoC.add(
                    UserAdditionDataEvent.waistCircumferenceChanged(value),
                  );
                },
                validator: const WaistCircumference.pure(),
                helpText: 'Ваш обхват талии может быть '
                    'от ${WaistCircumference.minWaistCircumference} '
                    'до ${WaistCircumference.maxWaistCircumference}',
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
                    'Обхват бедер',
                    style: TextStyle(
                      color: Color(0xff334c71),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              TextInput(
                controller: _hipGirthController,
                focus: _hipGirthFocus,
                onEditingComplete: _nextStep,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _userAdditionDataBLoC.add(
                    UserAdditionDataEvent.hipGirthChanged(value),
                  );
                },
                validator: const HipGirth.pure(),
                helpText: 'Ваш обхват бедер может быть '
                    'от ${HipGirth.minHipGirth} '
                    'до ${HipGirth.maxHipGirth}',
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 57.0,
                  vertical: 50,
                ),
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
                            'Сохранить',
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
