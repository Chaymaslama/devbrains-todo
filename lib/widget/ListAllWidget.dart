import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/Task.dart';
import '../library/globals.dart' as globals;
import '../provider/TaskModeel.dart';

class ListAllWidget extends StatelessWidget {
  const ListAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskModel>(
      builder: (context, model, child) {
        return ListView.builder(
          itemCount: model.todoTasks.length,
          itemBuilder: (BuildContext context, int index) {
            String key = model.todoTasks.keys.elementAt(index);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      globals.taskCategoryNames[key]!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: model.todoTasks[key]!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            border: Border.all(color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(model.todoTasks[key]![index].title),
                            subtitle: Text(
                              model.todoTasks[key]![index].deadline.toString(),
                            ),
                            leading: Checkbox(
                              value: model.todoTasks[key]![index].status,
                              onChanged: (bool? _isChecked) {
                                if (_isChecked!) {
                                  Task _task =model.todoTasks[key]![index];
                                  //print(model.todoTasks[key]![index].status);
                                  model.markAsChecked(key, index);
                                  Future.delayed(Duration(seconds: 1 ),()=>
                                  model.markAsDone(
                                    key,
                                      _task
                                  )
                                  );

                                }
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
