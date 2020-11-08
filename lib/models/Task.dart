

import 'package:flutter/cupertino.dart';

class Task{
  final String text;
  bool isDone;
  Task({@required this.text, this.isDone = false});

  toggleTask() {
    isDone = !isDone;
  }
}