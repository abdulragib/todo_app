import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => AddTaskScreen((newTaskTitle) {
              // setState(() {
              //   tasks.add(Task(name: newTaskTitle));
              // });
              Navigator.pop(context);
            }),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 30.0, left: 30.0, right: 30, bottom: 30),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(Icons.list,
                        size: 30.0, color: Colors.lightBlueAccent),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Todoey",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).tasks.length} Tasks',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: tasks_list(),
            ),
          ),
        ],
      ),
    );
  }
}
