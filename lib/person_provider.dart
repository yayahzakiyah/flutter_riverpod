import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_fundamental/person.dart';

class PersonNotifier extends StateNotifier<Person> {
  PersonNotifier() : super(const Person(name: 'no name', age: 0));

  void changeNAme(String name) => state = state.copyWith(name: name);

  void birthday() => state = state.copyWith(age: state.age + 1);
}

final personProvider = StateNotifierProvider<PersonNotifier, Person>((ref) => PersonNotifier());
