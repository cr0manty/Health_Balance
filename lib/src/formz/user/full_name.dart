import 'package:formz/formz.dart';

enum FullNameValidationError { empty, small, large }

class FullName extends FormzInput<String, FullNameValidationError> {
  static const minLength = 3;
  static const maxLength = 12;

  const FullName.pure() : super.pure('');

  const FullName.dirty([String value = '']) : super.dirty(value);

  @override
  FullNameValidationError validator(String value) {
    if (value?.isEmpty ?? true) {
      return FullNameValidationError.empty;
    } else if (value.length < minLength) {
      return FullNameValidationError.small;
    } else if (value.length > maxLength) {
      return FullNameValidationError.large;
    }
    return null;
  }
}
