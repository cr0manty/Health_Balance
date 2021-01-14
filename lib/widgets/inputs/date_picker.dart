import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

@immutable
class DatePicker extends StatefulWidget {
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
  _DatePickerState createState() => _DatePickerState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'DatePicker StatefulWidget',
            ),
          ),
      );
}

class _DatePickerState extends State<DatePicker> {
  final DateTime _currentDate = DateTime.now();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              '_DatePickerState State<DatePicker>',
            ),
          ),
      );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => widget.onDateTimeChanged(widget.currentDate),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      initialDateTime: widget.currentDate,
      onDateTimeChanged: widget.onDateTimeChanged,
      use24hFormat: true,
      maximumDate: _currentDate.add(const Duration(days: 1)),
      minimumYear: 1000,
      maximumYear: _currentDate.year,
      mode: CupertinoDatePickerMode.date,
    );
  }
}
