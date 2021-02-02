import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:health_balance/utils/constants.dart';
import 'package:formz/formz.dart';

@immutable
class TextInput extends StatefulWidget {
  final Widget suffix;
  final TextEditingController controller;
  final FocusNode focus;
  final bool enabled;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onChanged;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final String helpText;
  final bool alwaysShowHelpText;
  final FormzInput validator;

  const TextInput({
    @required this.onEditingComplete,
    @required this.controller,
    this.focus,
    this.suffix,
    this.enabled = true,
    this.textInputAction,
    this.keyboardType,
    this.onChanged,
    this.helpText,
    this.validator,
    this.alwaysShowHelpText = false,
    Key key,
  })  : assert(onEditingComplete != null, 'onEditingComplete must not be null'),
        assert(controller != null, 'controller must not be null'),
        super(key: key);

  @override
  _TextInputState createState() => _TextInputState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'TextInput StatefulWidget',
            ),
          ),
      );
}

class _TextInputState extends State<TextInput> {
  final _showHelpTextStream = StreamController<bool>();

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onValueChangeListener);
  }

  void _onValueChangeListener() {
    _showHelpTextStream.sink.add(
      widget.validator?.validator(widget.controller.text) != null,
    );
  }

  @override
  void dispose() {
    _showHelpTextStream.close();
    widget.controller.removeListener(_onValueChangeListener);

    super.dispose();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              '_TextInputState  State<TextInput>',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 21.0),
          decoration: BoxDecoration(
            color: AppColors.inputBackground,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              TextField(
                enabled: widget.enabled,
                controller: widget.controller,
                focusNode: widget.focus,
                style: const TextStyle(
                  fontSize: 20.0,
                  height: 1.5,
                  color: Colors.black,
                ),
                onChanged: widget.onChanged,
                onSubmitted: (_) => widget.onEditingComplete.call(),
                textInputAction: widget.textInputAction,
                keyboardType: widget.keyboardType,
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
              widget.suffix ?? const SizedBox.shrink(),
            ],
          ),
        ),
        StreamBuilder<Object>(
          stream: _showHelpTextStream.stream,
          initialData: widget.alwaysShowHelpText,
          builder: (context, snapshot) {
            if (widget.helpText != null &&
                (snapshot.data || widget.alwaysShowHelpText)) {
              return FittedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, right: 32, left: 32),
                  child: Text(
                    widget.helpText,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.errorText,
                    ),
                  ),
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
