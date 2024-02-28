import 'package:todoapp_task/task.dart';
import 'package:todoapp_task/task.dart';
import 'package:todoapp_task/taskdescriptionpage.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_task/main.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_task/taskdescriptionpage.dart';

import 'task.dart';
import 'task.dart';


class CreateTaskPage extends StatefulWidget {
  
  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Create New Task', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              // Handle additional actions
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Divider for separation
            
            SizedBox(height: 20),
            // "Main Task Name" title
            Text(
              'Main Task Name',
              style: TextStyle(color:Color.fromARGB(255, 246, 85, 85), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Task Name input with white rectangular box and smooth corners
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Task Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 20),
            // "Due Date" title
            Text(
              'Due Date',
              style: TextStyle(color:Color.fromARGB(255, 246, 85, 85),fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Due Date input with white rectangular box, smooth corners, and calendar icon
             SizedBox(height: 10),
            // Task Name input with white rectangular box and smooth corners
          
 Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 4,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Select Date',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      suffixIcon: Icon(Icons.calendar_today, color:Color.fromARGB(255, 246, 85, 85),), // Use prefixIcon for the icon
    ),
  ),
),
            SizedBox(height: 20),
            // "Description" title
            Text(
              'Description',
              style: TextStyle(color:Color.fromARGB(255, 246, 85, 85),fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Description input with white rectangular box and smooth corners
            Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 4,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Enter Description',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
       // Use prefixIcon for the icon
    ),
  ),
),
            SizedBox(height: 50),
            // "Add Task" button at the bottom center with dark orange color
Align(
  alignment: Alignment.center,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TaskDescriptionPage()),
      );
    },
    child: Text('Add Task'),
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 246, 85, 85), // Dark orange color
      onPrimary: Colors.white,
      minimumSize: Size(200, 50), // Adjust the size as needed
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}


