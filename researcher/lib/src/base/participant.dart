import 'study.dart';

class Participant {
  Participant({
    required this.firstName,
    required this.lastName,
    required this.age,
  });
  final String firstName;
  final String lastName;
  final int age;
}

final study = Study();
