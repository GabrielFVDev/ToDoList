import 'package:flutter/material.dart';
import 'package:todolist/data/database/app_database.dart';
import 'package:todolist/data/database/tables/todo_entity.dart';

enum HomeState { loading, loaded }

class HomeViewmodel extends ChangeNotifier {
  final _database = AppDatabase();

  Future createTodo(String title, String content) async {
    await _database
        .into(_database.todoItems)
        .insert(
          TodoItemsCompanion.insert(
            title: title,
            content: content,
            state: TodoState.draft,
          ),
        );
  }

  Future<List<TodoItem>> getAllItens() async =>
      await _database.select(_database.todoItems).get();

  
}
