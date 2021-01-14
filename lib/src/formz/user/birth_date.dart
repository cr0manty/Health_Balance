import 'package:formz/formz.dart';

enum BirthDateValidationError { empty, small, negative, large }

class BirthDate extends FormzInput<DateTime, BirthDateValidationError> {
  static const _minYears = 15;
  static const _maxYears = 100;

  const BirthDate.pure() : super.pure(null);

  const BirthDate.dirty([DateTime value]) : super.dirty(value);

  @override
  BirthDateValidationError validator(DateTime value) {
    if (value == null) {
      return BirthDateValidationError.empty;
    }
    final Duration aliveDuration = DateTime.now().difference(value);
    if (aliveDuration.isNegative) {
      return BirthDateValidationError.negative;
    } else if (aliveDuration.inDays / 365 < _minYears) {
      return BirthDateValidationError.small;
    } else if (aliveDuration.inDays / 365 > _maxYears) {
      return BirthDateValidationError.large;
    }
    return null;
  }
}
