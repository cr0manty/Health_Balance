import 'package:formz/formz.dart';

enum HipGirthValidationError { empty, isNotDigit, small, large }

class HipGirth extends FormzInput<String, HipGirthValidationError> {
  static const minHipGirth = 30;
  static const maxHipGirth = 120;

  const HipGirth.pure() : super.pure('');

  const HipGirth.dirty([String value = '']) : super.dirty(value);

  @override
  HipGirthValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return HipGirthValidationError.empty;
    } else if (_isNotDigit(value)) {
      return HipGirthValidationError.isNotDigit;
    } else if (double.parse(value) < minHipGirth) {
      return HipGirthValidationError.isNotDigit;
    } else if (double.parse(value) > maxHipGirth) {
      return HipGirthValidationError.large;
    }
    return null;
  }

  bool _isNotDigit(String value) {
    return double.parse(value, (e) => null) == null;
  }

  double get doubleValue => double.parse(value, (_) => null);
}
