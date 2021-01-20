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
  bmi,
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
        return _idealWeight(user.gender, user.userData.height);
      case ActivityValue.water:
        return _water(user.userData.weight, user.gender);
      case ActivityValue.calories:
        return _calories(
          user.gender,
          user.userData.weight,
          user.userData.height,
          user.age,
        );
      case ActivityValue.bmi:
        return _bmi();
    }
    return '-';
  }

  String get mainText {
    if (this == ActivityValue.bloodPressure) {
      return 'Систола';
    }
    return null;
  }

  AdditionData addition(User user) {
    assert(user?.userData != null, 'User or User Data can not be null');

    if (this == ActivityValue.bmi) {
      return AdditionData('Нормальная масса тела');
    } else if (this == ActivityValue.bloodPressure) {
      return AdditionData(
        'Диастола',
        useCard: true,
        value: _bloodPressureAddition(user.age, user.userData.weight),
      );
    }
    return null;
  }

  String _bodyIndex() {
    return '-';
  }

  String _bloodPressureAddition(int age, double weight) {
    if (age < 17) {
      return (1.6 * age + 42).toStringAsFixed(2);
    } else {
      return (63 + 0.1 * age + 0.15 * weight).toStringAsFixed(2);
    }
  }

  String _bmi() {
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

  String _idealWeight(Gender gender, double height) {
    if (gender == Gender.male) {
      return (0.713 * height - 58.0).toStringAsFixed(2);
    } else if (gender == Gender.female) {
      return (0.624 * height - 48.9).toStringAsFixed(2);
    }
    return '-';
  }

  String _water(double weight, Gender gender) {
    if (gender == Gender.male) {
      return (weight * 35 / 1000).toStringAsFixed(2);
    } else if (gender == Gender.female) {
      return (weight * 31 / 1000).toStringAsFixed(2);
    }
    return '-';
  }

  String _calories(Gender gender, double weight, double height, int age) {
    if (gender == Gender.male) {
      return (88.36 + (13.4 * weight) + (4.8 * height) - (5.7 * age))
          .toStringAsFixed(2);
    } else if (gender == Gender.female) {
      return (447.6 + (9.2 * weight) + (3.1 * height) - (4.3 * age))
          .toStringAsFixed(2);
    }
    return '-';
  }
}
