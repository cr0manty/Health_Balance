import 'package:formz/formz.dart';

enum WeightValidationError { empty, isNotDigit, small, large }

class Weight extends FormzInput<String, WeightValidationError> {

  static const minWeight = 35;
  static const maxWeight = 114;

  const Weight.pure() : super.pure('');

  const Weight.dirty([String value = '']) : super.dirty(value);

  @override
  WeightValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return WeightValidationError.empty;
    } else if (_isNotDigit(value)) {
      return WeightValidationError.isNotDigit;
    } else if (double.parse(value) < minWeight) {
      return WeightValidationError.small;
    } else if (double.parse(value) > maxWeight) {
      return WeightValidationError.large;
    }
    return null;
  }

  bool _isNotDigit(String value) {
    return double.parse(value, (e) => null) == null;
  }

  double get doubleValue => double.parse(value, (_) => null);
}
