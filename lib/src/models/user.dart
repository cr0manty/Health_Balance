import 'package:health_balance/src/models/user_data.dart';
import 'package:hive/hive.dart';

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
  final DateTime birthDate;
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
    DateTime birthDate,
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
}
