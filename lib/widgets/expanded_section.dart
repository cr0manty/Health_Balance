import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

@immutable
class ExpandedSection extends StatefulWidget {
  final AnimationController expandController;
  final Widget child;
  final bool expand;

  const ExpandedSection({
    @required this.expandController,
    @required this.child,
    this.expand = false,
    Key key,
  })  : assert(child != null, 'Field child in widget  must not be null'),
        assert(
          expandController != null,
          'Field expandController must not be null',
        ),
        super(key: key);

  static _ExpandedSectionState of(BuildContext context) =>
      context.findAncestorStateOfType<_ExpandedSectionState>();

  @override
  State<ExpandedSection> createState() => _ExpandedSectionState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'ExpandedSection StatefulWidget',
            ),
          ),
      );
}

class _ExpandedSectionState extends State<ExpandedSection> {
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animation = CurvedAnimation(
      parent: widget.expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              '_ExpandedSectionState State<ExpandedSection>',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: animation,
      child: widget.child,
    );
  }
}
