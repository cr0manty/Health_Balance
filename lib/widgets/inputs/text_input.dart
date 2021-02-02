import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/utils/constants.dart';

@immutable
class TextInput extends StatelessWidget {
  final Widget suffix;
  final TextEditingController controller;
  final FocusNode focus;
  final bool enabled;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onChanged;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  const TextInput({
    @required this.onEditingComplete,
    this.controller,
    this.focus,
    this.suffix,
    this.enabled = true,
    this.textInputAction,
    this.keyboardType,
    this.onChanged,
    Key key,
  })  : assert(onEditingComplete != null, 'onEditingComplete must not be null'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 21.0),
      decoration: BoxDecoration(
        color: const Color(0xffe0e7f1),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          TextField(
            enabled: enabled,
            controller: controller,
            focusNode: focus,
            style: const TextStyle(
              fontSize: 20.0,
              height: 1.5,
              color: Colors.black,
            ),
            onChanged: onChanged,
            onSubmitted: (_) => onEditingComplete(),
            textInputAction: textInputAction,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
              ),
              fillColor: AppColors.inputBackground,
            ),
          ),
          suffix ?? const SizedBox.shrink(),
        ],
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
              'TextInput StatelessWidget',
            ),
          ),
      );
}
