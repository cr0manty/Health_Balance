import 'package:health_balance/src/models/user/user_data.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
enum Gender {
  @HiveField(0)
  male,
  @HiveField(1)
  female,
  @HiveField(2)
  unknown
}

@HiveType(typeId: 1)
class User extends HiveObject {
  @HiveField(0)
  final String fullName;
  @HiveField(1)
  final Gender gender;
  @HiveField(2)
  final String birthDate;
  @HiveField(3)
  final UserData userData;

  User({
    this.gender,
    this.fullName,
    this.birthDate,
    this.userData,
  });

  User copyWith({
    String fullName,
    Gender gender,
    String birthDate,
    UserData userData,
  }) {
    return User(
      fullName: fullName ?? this.fullName,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      userData: userData ?? this.userData,
    );
  }

  bool get hasData => userData?.isNotEmpty ?? false;

  String get iconName => gender == Gender.female ? 'ic_female' : 'ic_male';

  int get age {
    final DateTime date = DateFormat('d MMMM y').parse(birthDate);
    final int yearDiff = DateTime.fromMillisecondsSinceEpoch(
      DateTime.now().difference(date).inMilliseconds,
    ).year;
    return yearDiff - 1970;
  }
}
