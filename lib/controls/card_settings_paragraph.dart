// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'card_settings_field.dart';

/// This is a field that allows multiple lines of text to be entered.
class CardSettingsParagraph extends StatefulWidget {
  CardSettingsParagraph({
    this.label: 'Label',
    this.initialValue,
    this.autovalidate: false,
    this.numberOfLines: 7,
    this.maxLength: 250,
    this.validator,
    this.onSaved,
    this.visible: true,
  });

  final String label;
  final String initialValue;
  final bool autovalidate;
  final int numberOfLines;
  final int maxLength;
  final bool visible;

  final FormFieldValidator<String> validator;
  final FormFieldSetter<String> onSaved;

  @override
  _CardSettingsParagraphState createState() =>
      new _CardSettingsParagraphState();
}

class _CardSettingsParagraphState extends State<CardSettingsParagraph> {
  Widget build(BuildContext context) {
    return new CardSettingsField(
      contentOnNewLine: true,
      label: widget.label,
      visible: widget.visible,
      content: Container(
        child: TextFormField(
          maxLines: widget.numberOfLines,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
            border: InputBorder.none,
          ),
          initialValue: widget.initialValue,
          autovalidate: widget.autovalidate,
          validator: widget.validator,
          onSaved: widget.onSaved,
          maxLength: widget.maxLength, // note, this will show the counter
        ),
      ),
    );
  }
}
