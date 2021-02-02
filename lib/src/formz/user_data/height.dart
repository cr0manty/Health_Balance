import 'package:formz/formz.dart';

enum HeightValidationError { empty, isNotDigit, small, large }

class Height extends FormzInput<String, HeightValidationError> {
  static const minHeight = 140;
  static const maxHeight = 194;

  const Height.pure() : super.pure('');

  const Height.dirty([String value = '']) : super.dirty(value);

  @override
  HeightValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return HeightValidationError.empty;
    } else if (_isNotDigit(value)) {
      return HeightValidationError.isNotDigit;
    } else if (double.parse(value) < minHeight) {
      return HeightValidationError.small;
    } else if (double.parse(value) > maxHeight) {
      return HeightValidationError.large;
    }
    return null;
  }

   bool _isNotDigit(String value) {
    return double.parse(value, (e) => null) == null;
  }

  double get doubleValue => double.parse(value, (_) => null);
}
