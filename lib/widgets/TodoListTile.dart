import 'package:flutter/material.dart';

class TodoListTile extends StatelessWidget {

  final String taskName;
  final bool isChecked;
  final Function checkBoxCallback;
  final Function deleteTaskCallback;

  TodoListTile({this.taskName, this.isChecked, this.checkBoxCallback, this.deleteTaskCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTaskCallback,
      title: Text(taskName, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      )
    ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}