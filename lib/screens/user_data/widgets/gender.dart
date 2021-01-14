import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/svg.dart';

@immutable
class GenderButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
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
        height: 60,
        width: MediaQuery.of(context).size.width / 2.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? iconColor : color,
          borderRadius: BorderRadius.circular(7),
        ),
        child: SvgPicture.asset(
          'assets/icons/$icon.svg',
          height: 45,
          width: 45,
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
