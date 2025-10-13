import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart' show BuildStep;
import 'package:source_gen/source_gen.dart'
    show ConstantReader, GeneratorForAnnotation;

import '../annotations/add_names.dart';

/// Generates a standalone file.
class AssistantGenerator extends GeneratorForAnnotation<AddNames> {
  /// Portion of source code included at the top of the generated file.
  /// Should be specified as header when constructing the merging builder.
  static String get header {
    return '/// Assistant.';
  }

  /// Portion of source code included at the very bottom of the generated file.
  /// Should be specified as [footer] when constructing the merging builder.
  static String get footer {
    return '/// This is the footer.';
  }

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final result = <String>[];
    if (element is ClassElement) {
      final nameObjects = element
          .getField('names')
          ?.computeConstantValue()
          ?.toListValue();

      for (final nameObj in nameObjects ?? []) {
        result.add(nameObj.toStringValue());
      }

      final title = element
          .getField('title')
          ?.computeConstantValue()
          ?.toStringValue();

      if (title != null) {
        final assistant = 'assistant$title';
        return 'final String $assistant = \'${result.join(', ')}\';';
      } else {
        return '// Error generating variable name: '
            'final String title = \'${result.join(', ')}\';';
      }
    }
    return '';
  }
}
