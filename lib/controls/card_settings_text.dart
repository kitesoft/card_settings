// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'card_settings_field.dart';

/// This is a standard one line text entry field. It encapselates the [TextFormField] widget.
class CardSettingsText extends StatefulWidget {
  CardSettingsText({
    this.label: 'Label',
    this.initialValue,
    this.maxLength: 20,
    this.autovalidate: false,
    this.validator,
    this.onSaved,
    this.keyboardType: TextInputType.text,
    this.unitLabel,
    this.visible: true,
  });

  final String label;
  final String initialValue;
  final bool autovalidate;
  final TextInputType keyboardType;
  final String unitLabel;
  final int maxLength;
  final bool visible;

  final FormFieldValidator<String> validator;
  final FormFieldSetter<String> onSaved;

  @override
  _CardSettingsTextState createState() => new _CardSettingsTextState();
}

class _CardSettingsTextState extends State<CardSettingsText> {
  Widget build(BuildContext context) {
    return new CardSettingsField(
      label: widget.label,
      visible: widget.visible,
      unitLabel: widget.unitLabel,
      content: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0), border: InputBorder.none),
        initialValue: widget.initialValue,
        autovalidate: widget.autovalidate,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        onSaved: widget.onSaved,
        inputFormatters: [
          LengthLimitingTextInputFormatter(widget.maxLength),
        ],
      ),
    );
  }
}
