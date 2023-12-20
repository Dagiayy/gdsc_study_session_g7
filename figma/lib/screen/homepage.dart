import 'package:figma/createtaskpage.dart';
import 'package:figma/main.dart';
import'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  List<Map<String,dynamic>> task = [
    {
      "date": "12/1/2023",
      "description":"sdkjbkdsvbdjsvb"
    },
    
    {
      "date": "12/1/2023",
      "description":"sdkjbkdsvbdjsvb"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Picture at the top
          Image(
            image: AssetImage('assets/stickman-with-todo-list.png'), 
            width: 500,
            height: 200,
          ),
          SizedBox(height: 20),
          // Title "Tasks List"
          Text(
            'Tasks List',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          SizedBox(
            height:300,
            child: ListView.builder(
              itemCount: task.length,
              itemBuilder: (context,index){
                return TaskItemBox(TaskItem(description: task[index]["description"], date: task[index]["date"], color: Colors.green));
              },
            ),
          ),
          // Task items with decorative colored strip or line
          
          // SizedBox(height: 16),
          // TaskItemBox(TaskItem(description: 'Task 2', date: '2023-02-15', color: Colors.blue)),
          // SizedBox(height: 16),
          // TaskItemBox(TaskItem(description: 'Task 3', date: '2023-03-10', color: Colors.orange)),
          // SizedBox(height: 16),
          // TaskItemBox(TaskItem(description: 'Task 4', date: '2023-04-05', color: Colors.purple)),
          // SizedBox(height: 20),
          // Decorative colored strip or line at the end
          Container(
            height: 10,
            color: Colors.orange,
          ),
          SizedBox(height: 20),
          // "Create Task" button at the end
          ElevatedButton(
            onPressed: () {
              // Navigate to the CreateTaskPage when the "Create Task" button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateTaskPage()),
              );
            },
            child: Text('Create Task'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 246, 82, 18),
              onPrimary: Colors.white,
              minimumSize: Size(200, 50), // Adjust the size as needed
            ),
          ),
        ],
      ),
    );
  }
}