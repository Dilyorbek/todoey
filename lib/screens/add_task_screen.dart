import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/Task.dart';
import 'package:todoey/models/task_data.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {

  String _text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
            ),
          ),
          TextField(
            onChanged: (newValue) {
              _text = newValue;
            },
            decoration: InputDecoration(),
            textAlign: TextAlign.center,
            autofocus: true,
          ),
          SizedBox(height: 10),
          FlatButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              final task  = Task(text: _text);
              Provider.of<TasksData>(context, listen: false).addTask(task);
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
