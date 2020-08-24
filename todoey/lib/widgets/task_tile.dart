import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({this.title, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      onChanged: checkboxCallback,
      value: isChecked,
    );
  }
}
