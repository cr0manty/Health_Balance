import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

typedef CountFunction = String Function();

class Activity {
  final String helpText;
  final String imageName;
  final String unit;
  final Color color;
  final CountFunction mainValue;

  const Activity({
    @required this.imageName,
    @required this.helpText,
    @required this.color,
    @required this.mainValue,
    this.unit,
  });
}
