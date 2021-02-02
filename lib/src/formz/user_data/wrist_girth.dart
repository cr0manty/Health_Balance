import 'package:formz/formz.dart';

enum WristGirthValidationError { empty, isNotDigit, small, large }

class WristGirth extends FormzInput<String, WristGirthValidationError> {
  static const minWristGirth = 15;
  static const maxWristGirth = 30;

  const WristGirth.pure() : super.pure('');

  const WristGirth.dirty([String value = '']) : super.dirty(value);

  @override
  WristGirthValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return WristGirthValidationError.empty;
    } else if (_isNotDigit(value)) {
      return WristGirthValidationError.isNotDigit;
    } else if (double.parse(value) < minWristGirth) {
      return WristGirthValidationError.small;
    } else if (double.parse(value) > maxWristGirth) {
      return WristGirthValidationError.large;
    }
    return null;
  }

  bool _isNotDigit(String value) {
    return double.parse(value, (e) => null) == null;
  }

  double get doubleValue => double.parse(value, (_) => null);
}
