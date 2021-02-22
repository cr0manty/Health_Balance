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
  @HiveField(3)
  final double waistCircumference;
  @HiveField(4)
  final double hipGirth;

  UserData({
    this.height,
    this.weight,
    this.wristGirth,
    this.waistCircumference,
    this.hipGirth,
  });

  UserData copyWith({
    double weight,
    double height,
    double wristGirth,
    double waistCircumference,
    double hipGirth,
  }) {
    return UserData(
      weight: weight ?? this.weight,
      height: height ?? this.height,
      wristGirth: wristGirth ?? this.wristGirth,
      waistCircumference: waistCircumference ?? this.waistCircumference,
      hipGirth: hipGirth ?? this.hipGirth,
    );
  }

  bool get isNotEmpty =>
      weight != null &&
      height != null &&
      wristGirth != null &&
      hipGirth != null &&
      waistCircumference != null;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserData &&
          runtimeType == other.runtimeType &&
          weight == other.weight &&
          height == other.height &&
          hipGirth == other.hipGirth &&
          waistCircumference == other.waistCircumference &&
          wristGirth == other.wristGirth;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => weight.hashCode ^ height.hashCode ^ wristGirth.hashCode;
}
