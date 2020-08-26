import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.title,
      this.isChecked,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: longPressCallback,
      child: CheckboxListTile(
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        onChanged: checkboxCallback,
        value: isChecked,
      ),
    );
  }
}
