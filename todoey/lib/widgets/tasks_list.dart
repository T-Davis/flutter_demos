import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              title: task.title,
              isChecked: task.isDone,
              checkboxCallback: (checkboxStatus) {
                taskData.toggleDone(task);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
