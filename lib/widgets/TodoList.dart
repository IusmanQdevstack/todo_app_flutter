import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/tasks.dart';
import 'package:todo_app/models/tasks_data.dart';
import 'package:todo_app/widgets/TodoListTile.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
            builder: (context, taskData, child) {
              return ListView.builder(itemBuilder: (context, index) {
                final Task task = taskData.tasks[index];
                return TodoListTile(
                  taskName: task.name,
                  isChecked: task.isDone,
                  checkBoxCallback: (newValue) {
                    taskData.changeCheckbox(task);
                  },
                  deleteTaskCallback: () {
                    taskData.deleteTask(task);
                  },
                );
              },
                itemCount: taskData.taskCount,
              );
            }
    );
  }
}