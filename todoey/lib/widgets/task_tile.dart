import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final text;

  const TaskTile({@required this.text});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(text),
      controlAffinity: ListTileControlAffinity.trailing,
      onChanged: (bool) {
        print('bool');
      },
      value: false,
    );
  }
}
