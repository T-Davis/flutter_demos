import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          text: 'get milk',
        ),
        TaskTile(
          text: 'get milk',
        ),
        TaskTile(
          text: 'get milk',
        ),
      ],
    );
  }
}
