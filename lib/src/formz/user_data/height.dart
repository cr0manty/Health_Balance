import 'package:formz/formz.dart';

enum HeightValidationError { empty, isNotDigit, small, large }

class Weight extends FormzInput<String, HeightValidationError> {
  static const _minHeight = 140;
  static const _maxHeight = 194;

  const Weight.pure() : super.pure('');

  const Weight.dirty([String value = '']) : super.dirty(value);

  @override
  HeightValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return HeightValidationError.empty;
    } else if (_isNotDigit) {
      return HeightValidationError.isNotDigit;
    } else if (double.parse(value) < _minHeight) {
      return HeightValidationError.small;
    } else if (double.parse(value) > _maxHeight) {
      return HeightValidationError.large;
    }
    return null;
  }

  bool get _isNotDigit {
    return double.parse(value, (e) => null) == null;
  }
}
