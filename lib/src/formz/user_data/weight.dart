import 'package:formz/formz.dart';

enum WeightValidationError { empty, isNotDigit, small, large }

class Weight extends FormzInput<String, WeightValidationError> {
  static const _minWeight = 35;
  static const _maxWeight = 114;

  const Weight.pure() : super.pure('');

  const Weight.dirty([String value = '']) : super.dirty(value);

  @override
  WeightValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return WeightValidationError.empty;
    } else if (_isNotDigit) {
      return WeightValidationError.isNotDigit;
    } else if (double.parse(value) < _minWeight) {
      return WeightValidationError.isNotDigit;
    } else if (double.parse(value) > _maxWeight) {
      return WeightValidationError.large;
    }
    return null;
  }

  bool get _isNotDigit {
    return double.parse(value, (e) => null) == null;
  }

  double get doubleValue => double.parse(value, (_) => null);
}
