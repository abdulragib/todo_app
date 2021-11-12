import 'package:flutter/material.dart';

class task_tile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkboxCallback;
  const task_tile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
