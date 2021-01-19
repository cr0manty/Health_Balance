import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:health_balance/src/models/user/user.dart';

typedef CountFunction = String Function();

class AdditionData {
  final String text;
  final String value;
  final bool useCard;

  AdditionData(
    this.text, {
    this.useCard = false,
    this.value,
  }) : assert(
          value != null && useCard || !useCard,
          'Value is required if use card',
        );
}

class Activity {
  final String helpText;
  final String imageName;
  final String unit;
  final Color color;
  final ActivityValue data;

  const Activity({
    @required this.imageName,
    @required this.helpText,
    @required this.color,
    @required this.data,
    this.unit,
  });
}

enum ActivityValue {
  bodyIndex,
  bloodPressure,
  idealWeight,
  imb,
  water,
  calories,
}

extension ActivityValueExtension on ActivityValue {
  String value(User user) {
    assert(user?.userData != null, 'User or User Data can not be null');

    switch (this) {
      case ActivityValue.bloodPressure:
        return _bloodPressure(user.userData.weight, user.age);
      case ActivityValue.bodyIndex:
        return _bodyIndex();
      case ActivityValue.idealWeight:
        return _idealWeight();
      case ActivityValue.water:
        return _water(user.userData.weight, user.gender);
      case ActivityValue.calories:
        return _calories();
      case ActivityValue.imb:
        return _imb();
    }
    return '-';
  }

  String get mainText {
     if (this == ActivityValue.bloodPressure) {
       return 'Систола';
     }
     return null;
  }

  AdditionData get addition {
    if (this == ActivityValue.imb) {
      return AdditionData('Нормальная масса тела');
    } else if (this == ActivityValue.bloodPressure) {
      return AdditionData(
        'Диастола',
        useCard: true,
        value: _bloodPressureAddition(),
      );
    }
    return null;
  }

  String _bodyIndex() {
    return '-';
  }

  String _bloodPressureAddition() {
    return '-';
  }

  String _imb() {
    return '-';
  }

  String _bloodPressure(double weight, int age) {
    double data;

    if (age < 17) {
      data = 1.7 * age + 83;
    } else {
      data = 109 + 0.5 * age + 0.1 * weight;
    }
    return data?.toStringAsFixed(2) ?? '-';
  }

  String _idealWeight() {
    return '-';
  }

  String _water(double weight, Gender gender) {
    double data;

    if (gender == Gender.male) {
      data = weight * 35;
    } else {
      data = weight * 31;
    }
    return data?.toStringAsFixed(2) ?? '-';
  }

  String _calories() {
    return '-';
  }
}
