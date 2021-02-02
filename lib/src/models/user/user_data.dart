import 'package:hive/hive.dart';

part 'user_data.g.dart';

@HiveType(typeId: 2)
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

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserData &&
          runtimeType == other.runtimeType &&
          weight == other.weight &&
          height == other.height &&
          wristGirth == other.wristGirth;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => weight.hashCode ^ height.hashCode ^ wristGirth.hashCode;
}
