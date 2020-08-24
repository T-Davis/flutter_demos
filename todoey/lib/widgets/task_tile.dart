import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;

  TaskTile({this.title, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      onChanged: (value) {
        // isChecked = value;
      },
      value: false,
    );
  }
}
