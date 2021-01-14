import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

@immutable
class DatePicker extends StatelessWidget {
  final DateTime currentDate;
  final ValueChanged<DateTime> onDateTimeChanged;

  const DatePicker({
    @required this.onDateTimeChanged,
    @required this.currentDate,
    Key key,
  })  : assert(onDateTimeChanged != null, 'onDateTimeChanged can not be null'),
        assert(currentDate != null, 'currentDate can not be null'),
        super(key: key);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'DatePicker StatelessWidget',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      initialDateTime: currentDate,
      onDateTimeChanged: onDateTimeChanged,
      use24hFormat: true,
      maximumDate: currentDate,
      minimumYear: 1000,
      maximumYear: currentDate.year,
      mode: CupertinoDatePickerMode.date,
    );
  }
}
