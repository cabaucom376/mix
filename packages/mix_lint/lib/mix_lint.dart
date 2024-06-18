import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:mix_lint/src/lints/max_number_of_attributes_per_style/max_number_of_attributes_per_style.dart';

import 'src/lints/attributes_ordering.dart';
import 'src/lints/avoid_defining_tokens_or_variants_within_style.dart';
import 'src/lints/avoid_defining_tokens_within_theme_data.dart';
import 'src/lints/avoid_empty_variants.dart';
import 'src/lints/avoid_variant_inside_context_variant.dart';

PluginBase createPlugin() => _MixLint();

class _MixLint extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        AttributesOrdering(),
        AvoidDefiningTokensOrVariantsWithinStyle(),
        AvoidDefiningTokensWithinThemeData(),
        AvoidVariantInsideContextVariant(),
        AvoidEmptyVariants(),
        MaxNumberOfAttributesPerStyle.fromConfig(configs),
      ];
}
