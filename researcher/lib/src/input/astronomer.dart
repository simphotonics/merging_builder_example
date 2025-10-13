import 'package:researcher_builder/researcher_builder.dart'
    show AddIntegers, AddNames, AddNumbers;

import '../base/study.dart';
import 'biologist.dart';

/// Const class for testing purposes.
@AddNames()
@AddNumbers()
@AddIntegers()
class Astronomer {
  const Astronomer();

  final List<String> names = const ['Thomas', 'Mayor'];

  final List<int> integers = const [47, 91];

  final num number = 19;

  final String title = 'Prof';

  final studies = const <Study>[];
}

final researcherB = Biologist();
