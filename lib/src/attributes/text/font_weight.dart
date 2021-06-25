import 'package:flutter/material.dart';

import '../base_attribute.dart';

class FontWeightUtility {
  const FontWeightUtility();

  /// Thin, the least thick
  FontWeightAttribute get w100 => FontWeightAttribute(FontWeight.w100);

  /// Extra-light
  FontWeightAttribute get w200 => FontWeightAttribute(FontWeight.w200);

  /// Light
  FontWeightAttribute get w300 => FontWeightAttribute(FontWeight.w300);

  /// Normal / regular / plain
  FontWeightAttribute get w400 => FontWeightAttribute(FontWeight.w400);

  /// Medium
  FontWeightAttribute get w500 => FontWeightAttribute(FontWeight.w500);

  /// Semi-bold
  FontWeightAttribute get w600 => FontWeightAttribute(FontWeight.w600);

  /// Bold
  FontWeightAttribute get w700 => FontWeightAttribute(FontWeight.w700);

  /// Extra-bold
  FontWeightAttribute get w800 => FontWeightAttribute(FontWeight.w800);

  /// Black, the most thick
  FontWeightAttribute get w900 => FontWeightAttribute(FontWeight.w900);

  /// The default font weight.
  FontWeightAttribute get normal => w400;

  /// A commonly used font weight that is heavier than normal.
  FontWeightAttribute get bold => w700;

  /// A list of all the font weights.
  List<FontWeightAttribute> get values => <FontWeightAttribute>[
        w100,
        w200,
        w300,
        w400,
        w500,
        w600,
        w700,
        w800,
        w900
      ];
}

class FontWeightAttribute extends TextTypeAttribute<FontWeight> {
  const FontWeightAttribute(this.fontWeight);
  final FontWeight fontWeight;

  FontWeight get value => fontWeight;
}
