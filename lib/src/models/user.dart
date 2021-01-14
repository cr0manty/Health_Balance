import 'package:health_balance/src/models/user_data.dart';
import 'package:hive/hive.dart';

enum Gender { male, female }

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  final String fullName;
  @HiveField(1)
  final Gender gender;
  @HiveField(2)
  final DateTime birthday;
  @HiveField(3)
  final UserData userData;

  User({
    this.gender,
    this.fullName,
    this.birthday,
    this.userData,
  });

  User copyWith({
    String fullName,
    Gender gender,
    DateTime birthday,
    UserData userData,
  }) {
    return User(
      fullName: fullName ?? this.fullName,
      gender: gender ?? this.gender,
      birthday: birthday ?? this.birthday,
      userData: userData ?? this.userData,
    );
  }

  bool get hasData => userData?.isNotEmpty ?? false;
}
