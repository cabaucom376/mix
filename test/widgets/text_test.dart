import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mix/mix.dart';
import 'package:mix/src/attributes/primitives/color.dart';
import 'package:mix/src/attributes/text/debug_label.dart';
import 'package:mix/src/attributes/text/font_family.dart';
import 'package:mix/src/attributes/text/font_size.dart';
import 'package:mix/src/attributes/text/font_style.dart';
import 'package:mix/src/attributes/text/font_weight.dart';
import 'package:mix/src/attributes/text/letter_spacing.dart';
import 'package:mix/src/attributes/text/locale.dart';
import 'package:mix/src/attributes/text/max_lines.dart';
import 'package:mix/src/attributes/text/soft_wrap.dart';
import 'package:mix/src/attributes/text/text_align.dart';
import 'package:mix/src/attributes/text/text_baseline.dart';
import 'package:mix/src/attributes/text/text_direction.dart';
import 'package:mix/src/attributes/text/text_height.dart';
import 'package:mix/src/attributes/text/text_overflow.dart';
import 'package:mix/src/attributes/text/text_scale_factor.dart';
import 'package:mix/src/attributes/text/text_width_basis.dart';
import 'package:mix/src/attributes/text/word_spacing.dart';
import 'package:mix/src/widgets/text.dart';

import '../test_utils.dart';

void main() {
  group("Mix Text widget", () {
    const widgetText = 'Mix Text Widget';
    testWidgets('Adds text on widget', (tester) async {
      await tester.pumpWidget(
        DirectionalTestWidget(
          child: Mix().text(widgetText),
        ),
      );

      expect(
        tester.widget<TextMixer>(find.byType(TextMixer)).text,
        widgetText,
      );
    });

    testWidgets('Adds Text properties on widget', (tester) async {
      await tester.pumpWidget(
        DirectionalTestWidget(
          child: Mix(
            TextOverflowAttribute(TextOverflow.ellipsis),
            SoftWrapAttribute(true),
            TextScaleFactorAttribute(2.2),
            TextWidthBasisAttribute(TextWidthBasis.longestLine),
            MaxLinesAttribute(3),
            TextAlignAttribute(TextAlign.justify),
            TextDirectionAttribute(TextDirection.rtl),
          ).text(widgetText),
        ),
      );

      final textProp = tester.widget<Text>(find.byType(Text));

      expect(textProp.overflow, TextOverflow.ellipsis);
      expect(textProp.softWrap, true);
      expect(textProp.textScaleFactor, 2.2);
      expect(textProp.textWidthBasis, TextWidthBasis.longestLine);
      expect(textProp.maxLines, 3);
      expect(textProp.textAlign, TextAlign.justify);
      expect(textProp.textDirection, TextDirection.rtl);
    });

    testWidgets('Adds Text Style on widget', (tester) async {
      await tester.pumpWidget(
        DirectionalTestWidget(
          child: Mix(
            FontSizeAttribute(20),
            WordSpacingAttribute(2),
            LetterSpacingAttribute(3),
            TextBaselineAttribute(TextBaseline.ideographic),
            FontFamilyAttribute('Roboto'),
            FontWeightAttribute(FontWeight.bold),
            TextColorAttribute(Colors.amber),
            FontStyleAttribute(FontStyle.italic),
            LocaleAttribute(Locale('es', 'US')),
            DebugLabelAttribute('debug_label'),
            TextHeightAttribute(10),
            BackgroundColorAttribute(Colors.blue),
          ).text(widgetText),
        ),
      );

      final textStyle = tester.widget<Text>(find.byType(Text)).style!;

      expect(textStyle.fontSize, 20);
      expect(textStyle.wordSpacing, 2);
      expect(textStyle.letterSpacing, 3);
      expect(textStyle.textBaseline, TextBaseline.ideographic);
      expect(textStyle.fontFamily, 'Roboto');
      expect(textStyle.fontWeight, FontWeight.bold);
      expect(textStyle.color, Colors.amber);
      expect(textStyle.fontStyle, FontStyle.italic);
      expect(textStyle.locale!.languageCode, 'es');
      expect(textStyle.locale!.countryCode, 'US');
      expect(textStyle.height, 10);
      expect(textStyle.backgroundColor, Colors.blue);
    });
  });
}
