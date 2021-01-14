import 'package:hive/hive.dart';

class UserData extends HiveObject {
  @HiveField(0)
  final double weight;
  @HiveField(1)
  final double height;
  @HiveField(2)
  final double wristGirth;

  UserData({
    this.height,
    this.weight,
    this.wristGirth,
  });

  UserData copyWith({
    double weight,
    double height,
    double wristGirth,
  }) {
    return UserData(
      weight: weight ?? this.weight,
      height: height ?? this.height,
      wristGirth: wristGirth ?? this.wristGirth,
    );
  }

  bool get isNotEmpty => weight != null && height != null && wristGirth != null;
}
