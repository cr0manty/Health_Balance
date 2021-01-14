import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_balance/router/navigation.dart';
import 'package:health_balance/screens/user_data/widgets/gender.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/src/blocs/user_data/user_data_bloc.dart';
import 'package:health_balance/src/models/user.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:health_balance/widgets/inputs/date_picker.dart';
import 'package:health_balance/widgets/inputs/text_input.dart';
import 'package:intl/intl.dart';

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
  final TextEditingController _birthDateController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();

  UserDataBLoC _userDataBLoC;

  @override
  void initState() {
    super.initState();
    _userDataBLoC = BlocProvider.of<UserDataBLoC>(context);
    _nameController.addListener(() {
      _userDataBLoC.add(
        UserDataEvent.fullNameChanged(_nameController.text),
      );
    });
  }

  @override
  void dispose() {
    _nameController?.dispose();
    _userDataBLoC?.close();
    _birthDateController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocListener<UserBLoC, UserState>(
        listener: (context, state) {
          if (state is ExistUserState) {
            NavigationManager.instance.pushNamed('/user_additional_info');
          }
        },
        child: ListView(
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
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    final DateTime _currentTime = DateTime.now();
                    _birthDateController.text =
                        DateFormat('d MMMM y').format(_currentTime);
                    return SizedBox(
                      height: 300,
                      child: DatePicker(
                        onDateTimeChanged: (date) {
                          _birthDateController.text =
                              DateFormat('d MMMM y').format(date);
                          _userDataBLoC.add(
                            UserDataEvent.birthDateChanged(date),
                          );
                        },
                        currentDate: _currentTime,
                      ),
                    );
                  },
                );
              },
              child: TextInput(
                controller: _birthDateController,
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
              child: BlocBuilder<UserDataBLoC, UserDataState>(
                  buildWhen: (previous, current) =>
                      previous.gender != current.gender,
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GenderButton(
                          icon: 'mars',
                          color: const Color(0xffe0e7f1),
                          iconColor: const Color(0xff5392f9),
                          isSelected: state.gender.value == Gender.male,
                          onTap: () {
                            _userDataBLoC.add(
                              const UserDataEvent.genderChanged(
                                Gender.male,
                              ),
                            );
                          },
                        ),
                        GenderButton(
                          icon: 'venus',
                          color: const Color(0xffe7e0f1),
                          iconColor: const Color(0xffff60b2),
                          isSelected: state.gender.value == Gender.female,
                          onTap: () {
                            _userDataBLoC.add(
                              const UserDataEvent.genderChanged(
                                Gender.female,
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 57.0),
              child: BlocBuilder<UserDataBLoC, UserDataState>(
                buildWhen: (previous, current) =>
                    previous.status != current.status,
                builder: (context, state) {
                  return FlatButton(
                    color: const Color(0xffff60b2),
                    disabledColor: const Color(0xffff60b2).withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: state.isValid
                        ? () {
                            _userDataBLoC.add(
                              const UserDataEvent.submit(),
                            );
                          }
                        : null,
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
