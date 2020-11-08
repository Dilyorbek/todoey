import 'package:flutter/material.dart';
import 'package:todoey/models/Task.dart';

class TaskTile extends StatelessWidget {
  final  Task task;
  final Function checkboxCallback;
  final Function longPressCallback;
  const TaskTile({@required this.task, @required this.checkboxCallback,@required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        task.text,
        style: TextStyle(decoration: task.isDone ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: checkboxCallback,
      ),
    );
  }
}
