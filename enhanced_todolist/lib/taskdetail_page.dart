import 'package:enhanced_todolist/homepage.dart';
import 'package:enhanced_todolist/starter.dart';
import 'package:flutter/material.dart';

import 'task_model.dart';
class Page4 extends StatelessWidget {
  final Task task;

  Page4({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Detail'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 246, 82, 18)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              // Implement your action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: const Image(
                  image: AssetImage('assets/images/3.jpg'),
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            SizedBox(height: 10),

            Text('Title'),
            SizedBox(height: 5),

            Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(16),
              child: Text(task.title, style: TextStyle(fontSize: 16)),
            ),

            SizedBox(height: 16),
            Text('Description'),
            Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(16),
              child: Text(task.description, style: TextStyle(fontSize: 16)),
            ),

            SizedBox(height: 16),
            Text('Deadline'),
            Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(16),
              child: Text(task.deadline.toString(), style: TextStyle(fontSize: 16)),
            ),

            SizedBox(height: 16),
            // Edit Task Button
            Row(
              children: [
             ElevatedButton(
                onPressed: () {
                  
                  Navigator.pop(context);
                },
                child: Text('Edit Task'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 246, 85, 85),
                  onPrimary: Colors.white,
                ),
                
              ),
              SizedBox(width: 58),

  ElevatedButton(
                 onPressed: () {
                                         Navigator.of(context).push(
                                           MaterialPageRoute(builder: (context) => Page2()),
                                         );
                 },
                child: Text('Save'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 246, 85, 85),
                  onPrimary: Colors.white,
                ),
                
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
