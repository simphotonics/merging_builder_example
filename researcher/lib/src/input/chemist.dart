import 'package:researcher_builder/researcher_builder.dart'
    show AddIntegers, AddNames, AddNumbers;

import '../base/study.dart';

/// Const class for testing purposes.
@AddNumbers()
@AddIntegers()
@AddNames()
class Chemist {
  const Chemist();

  final List<String> names = const ['Jake', 'Smith'];

  final Set<int> integers = const {7, 9};

  final num number = 119;

  final String title = 'MD';

  final studies = const <Study>[];
}
