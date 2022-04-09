import 'package:flutter/material.dart';

import '../widgets/create_todo.dart';
import '../widgets/todo_header.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              children: [
                TodoHeader(),
                CreateTodo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
