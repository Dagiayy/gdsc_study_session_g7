import 'package:figma/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TaskItem {
  final String date;
  final String description;

  TaskItem({required this.date, required this.description});
}

class TaskItemBox extends StatelessWidget {
  final TaskItem taskItem;

  TaskItemBox({required this.taskItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Date: ${taskItem.date}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Description: ${taskItem.description}',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class TaskDescriptionPage extends StatelessWidget {

          
  List<TaskItem> tasks = [
    TaskItem(date: "12/1/2023", description: "sdkjbkdsvbdjsvb"),
    TaskItem(date: "12/1/2023", description: "sdkjbkdsvbdjsvb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 246, 82, 18),
        title: Text('Task Detail'),
      ),
      body: ListView(children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return TaskItemBox(taskItem: tasks[index]);
              },
            ),
          ),
          // Picture at the bottom
          
        ],
      ),
      ],)
    );
  }
}
