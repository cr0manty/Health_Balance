import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

@immutable
class GenderButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color color;
  final Color iconColor;
  final bool isSelected;

  const GenderButton({
    @required this.icon,
    @required this.color,
    @required this.iconColor,
    this.isSelected = false,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 60,
        decoration: BoxDecoration(
          color: isSelected ? iconColor : color,
          borderRadius: BorderRadius.circular(
            7,
          ),
        ),
        child: Icon(
          icon,
          size: 45,
          color: isSelected ? color : iconColor,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'GenderButton StatelessWidget',
            ),
          ),
      );
}
