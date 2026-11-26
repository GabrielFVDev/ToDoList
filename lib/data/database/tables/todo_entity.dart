import 'package:drift/drift.dart';

enum TodoState { draft, todo, doing, done, trash }

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get content => text().named('body')();
  TextColumn get state => textEnum<TodoState>()();
}
