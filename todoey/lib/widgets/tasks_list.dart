import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
