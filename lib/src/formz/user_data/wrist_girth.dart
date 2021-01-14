import 'package:formz/formz.dart';

enum WristGirthValidationError { empty, isNotDigit, small, large }

class WristGirth extends FormzInput<String, WristGirthValidationError> {
  static const _minWristGirth = 15;
  static const _maxWristGirth = 30;

  const WristGirth.pure() : super.pure('');

  const WristGirth.dirty([String value = '']) : super.dirty(value);

  @override
  WristGirthValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return WristGirthValidationError.empty;
    } else if (_isNotDigit) {
      return WristGirthValidationError.isNotDigit;
    } else if (double.parse(value) < _minWristGirth) {
      return WristGirthValidationError.small;
    } else if (double.parse(value) > _maxWristGirth) {
      return WristGirthValidationError.large;
    }
    return null;
  }

  bool get _isNotDigit {
    return double.parse(value, (e) => null) == null;
  }
}
