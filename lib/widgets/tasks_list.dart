import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';

class tasks_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return task_tile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                });
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
