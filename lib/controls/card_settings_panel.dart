// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// This is the card wrapper that all the field controls are placed into
class CardSettings extends StatefulWidget {
  CardSettings({this.children});

  final List<Widget> children;

  @override
  _CardSettingState createState() => new _CardSettingState();
}

class _CardSettingState extends State<CardSettings> {
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      padding: EdgeInsets.all(12.0),
      child: Card(
        elevation: 5.0,
        child: Column(
          children: widget.children,
        ),
      ),
    );
  }
}
