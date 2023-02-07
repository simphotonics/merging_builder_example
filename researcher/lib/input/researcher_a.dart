import 'package:researcher_builder/researcher_builder.dart'
    show AddIntegers, AddNames, AddNumbers;

/// Const class for testing purposes.
@AddNames()
@AddNumbers()
@AddIntegers()
class ResearcherA {
  const ResearcherA();

  final List<String> names = const ['Thomas', 'Mayor'];

  final List<int> integers = const [47, 91];

  final num number = 19;

  final String title = 'ResearcherA';
}
