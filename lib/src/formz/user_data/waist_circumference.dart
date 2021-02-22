import 'package:formz/formz.dart';

enum WaistCircumferenceValidationError { empty, isNotDigit, small, large }

class WaistCircumference
    extends FormzInput<String, WaistCircumferenceValidationError> {
  static const minWaistCircumference = 20;
  static const maxWaistCircumference = 90;

  const WaistCircumference.pure() : super.pure('');

  const WaistCircumference.dirty([String value = '']) : super.dirty(value);

  @override
  WaistCircumferenceValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return WaistCircumferenceValidationError.empty;
    } else if (_isNotDigit(value)) {
      return WaistCircumferenceValidationError.isNotDigit;
    } else if (double.parse(value) < minWaistCircumference) {
      return WaistCircumferenceValidationError.isNotDigit;
    } else if (double.parse(value) > maxWaistCircumference) {
      return WaistCircumferenceValidationError.large;
    }
    return null;
  }

  bool _isNotDigit(String value) {
    return double.parse(value, (e) => null) == null;
  }

  double get doubleValue => double.parse(value, (_) => null);
}
