import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

@immutable
class TextInput extends StatelessWidget {
  final Widget suffix;
  final TextEditingController controller;
  final FocusNode focus;
  final bool enabled;
  final VoidCallback onEditingComplete;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  const TextInput({
    this.controller,
    this.focus,
    this.suffix,
    this.enabled = true,
    this.onEditingComplete,
    this.textInputAction,
    this.keyboardType,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 21.0),
      decoration: BoxDecoration(
        color: const Color(0xffe0e7f1),
        borderRadius: BorderRadius.circular(
          7,
        ),
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
              color: Colors.white,
            ),
            onEditingComplete: onEditingComplete,
            textInputAction: textInputAction,
            keyboardType: keyboardType,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
              ),
              fillColor: Color(0xffe0e7f1),
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
