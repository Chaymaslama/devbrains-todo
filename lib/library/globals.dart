import 'package:flutter/material.dart';

const List<MaterialColor> primaries = <MaterialColor>[

  Colors.cyan,
  Colors.lightGreen,
  Colors.green,
  Colors.teal,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.amber,
  Colors.orange,
  Colors.deepOrange,
  Colors.pink,
  Colors.red,

];
const late='late';
const today='today';
const tomorrow='tomorrow';
const thisWeek='thisWeek';
const nextWeek='nextWeek';
const thisMonth='thisMonth';
const later='later';
const Map<String,String> taskCategoryNames = {
  late:'Late',
  today:'Today',
  tomorrow:'Tomorrow',
  thisWeek:'This week',
  nextWeek:'Next week',
  thisMonth:'This month',
  later:'Later'
};
//Shared prefrences keys
const todoTasksKey = "todo_tasks";
const doneTasksKey = "done_tasks";
