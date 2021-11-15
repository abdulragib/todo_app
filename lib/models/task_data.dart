import 'package:flutter/material.dart';
import './task.dart';
import '../main.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Abdul Ragib'),
    Task(name: "Ani"),
    Task(name: 'Surbhi Rai'),
    Task(name: 'sara'),
  ];
}
