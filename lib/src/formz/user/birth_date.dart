import 'package:formz/formz.dart';
import 'package:intl/intl.dart';

enum BirthDateValidationError { empty, small, negative, large }

class BirthDate extends FormzInput<String, BirthDateValidationError> {
  static const minYears = 15;
  static const maxYears = 100;

  const BirthDate.pure() : super.pure(null);

  const BirthDate.dirty([String value]) : super.dirty(value);

  @override
  BirthDateValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return BirthDateValidationError.empty;
    }
    final date = DateFormat('d MMMM y').parse(value);

    final Duration aliveDuration = DateTime.now().difference(date);
    if (aliveDuration.isNegative) {
      return BirthDateValidationError.negative;
    } else if (aliveDuration.inDays / 365 < minYears) {
      return BirthDateValidationError.small;
    } else if (aliveDuration.inDays / 365 > maxYears) {
      return BirthDateValidationError.large;
    }
    return null;
  }
}
