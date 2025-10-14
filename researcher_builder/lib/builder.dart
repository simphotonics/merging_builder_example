import 'package:build/build.dart';
import 'package:merging_builder/merging_builder.dart';
import 'package:researcher_builder/researcher_builder.dart' show AddNames;

import 'src/generators/add_names_generator.dart';
import 'src/generators/assistant_generator.dart';

/// Defines a merging builder.
/// * The default values for the options: `input_files`,
/// `output_file`, `header`, `footer`,
/// and `sort_assets` are specified here
/// * The option values can be overwritten by specifying them in the
/// configuration file `build.yaml` of the package that uses this builder.
Builder addNamesBuilder(BuilderOptions options) {
  final defaultOptions = BuilderOptions({
    'input_files': 'lib/*.dart',
    'output_file': 'lib/output.dart',
    'header': AddNamesGenerator.header,
    'footer': AddNamesGenerator.footer,
    'sort_assets': true,
  });

  // Apply user set options.
  options = defaultOptions.overrideWith(options);
  return MergingBuilder<List<String>, AddNames>(
    generator: AddNamesGenerator(),
    inputFiles: options.config['input_files'],
    outputFile: options.config['output_file'],
    header: options.config['header'],
    footer: options.config['footer'],
    sortAssets: options.config['sort_assets'],
  );
}

/// Defines a standalone builder.
Builder assistantBuilder(BuilderOptions options) {
  final defaultOptions = BuilderOptions({
    'input_files': 'lib/*.dart',
    'output_files': 'lib/output/assistant_(*).dart',
    'header': AssistantGenerator.header,
    'footer': AssistantGenerator.footer,
    'root': '',
  });
  options = defaultOptions.overrideWith(options);
  return StandaloneBuilder(
    generator: AssistantGenerator(),
    inputFiles: options.config['input_files'],
    outputFiles: options.config['output_files'],
    root: options.config['root'],
  );
}
