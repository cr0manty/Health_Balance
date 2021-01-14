import 'package:formz/formz.dart';
import 'package:health_balance/src/models/user.dart';

enum GenderStateValidationError { unknown }

class GenderState extends FormzInput<Gender, GenderStateValidationError> {
  const GenderState.pure() : super.pure(Gender.unknown);

  const GenderState.dirty([Gender value = Gender.unknown]) : super.dirty(value);

  @override
  GenderStateValidationError validator(Gender value) {
    if (value == null || value == Gender.unknown) {
      return GenderStateValidationError.unknown;
    }
    return null;
  }
}
