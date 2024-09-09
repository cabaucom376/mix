import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';
import 'package:mix_annotations/mix_annotations.dart';

import '../../theme/remix_theme.dart';

part 'divider.g.dart';
part 'divider_style.dart';
part 'divider_widget.dart';
// part 'progress_theme.dart';

final $divider = DividerSpecUtility.self;

@MixableSpec()
base class DividerSpec extends Spec<DividerSpec>
    with _$DividerSpec, Diagnosticable {
  final BoxSpec container;

  /// {@macro progress_spec_of}
  static const of = _$DividerSpec.of;

  static const from = _$DividerSpec.from;

  const DividerSpec({
    BoxSpec? container,
    super.animated,
    super.modifiers,
  }) : container = container ?? const BoxSpec();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    _debugFillProperties(properties);
  }
}
