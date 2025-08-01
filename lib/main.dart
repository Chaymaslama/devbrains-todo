import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/TaskModeel.dart';
import 'package:todoapp/view/AddTasksView.dart';
import 'package:todoapp/view/ListTasksView.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TaskModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      routes: {
        "ListTasks":(context)=>ListTasksView(),
        "addTask":(context)=>AddTasksView(),

      },
      home: ListTasksView()
    );
  }
}
