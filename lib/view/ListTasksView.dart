import 'package:flutter/material.dart';
import 'package:todoapp/widget/ListAllWidget.dart';
import 'package:todoapp/widget/ListTaskByTabWidget.dart';

import '../library/globals.dart' as globals;

class ListTasksView extends StatefulWidget {
  const ListTasksView({Key? key}) : super(key: key);
  @override
  _ListTasksViewState createState() => _ListTasksViewState();
}

class _ListTasksViewState extends State<ListTasksView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("List Tasks"),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text:"All"),
              Tab(text:"Today"),
              Tab(text:"Tomorrow"),
              Tab(text:"This Week"),
              Tab(text:"Next Week"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [ListAllWidget(),
            ListTasksByTabWidget(tabKey: globals.today),
            ListTasksByTabWidget(tabKey: globals.tomorrow),
            ListTasksByTabWidget(tabKey: globals.thisWeek),
            ListTasksByTabWidget(tabKey: globals.nextWeek)],
        ),
        floatingActionButton: FloatingActionButton(child:Icon(Icons.add),
            onPressed: (){
          Navigator.pushNamed(context, 'addTask');
            }),
      ),

    );
  }
}

class ListTaskWidget {
  const ListTaskWidget();
}
