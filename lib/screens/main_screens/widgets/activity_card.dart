import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';

@immutable
class ActivityCard extends StatelessWidget {
  final String imageName;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const ActivityCard({
    @required this.imageName,
    @required this.label,
    @required this.color,
    this.onTap,
    Key key,
  })  : assert(imageName != null, 'imageName is required'),
        assert(color != null, 'color is required'),
        assert(label != null, 'label is required'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/$imageName.svg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(7.0),
                    bottomLeft: Radius.circular(7.0),
                  ),
                  color: color,
                ),
                alignment: Alignment.center,
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF334C71),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
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
              'ActivityCard StatelessWidget',
            ),
          ),
      );
}
