import 'package:todoapp_task/createtaskpage.dart';
import 'package:todoapp_task/main.dart';
import'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> task = [
    {
      "date": "12/1/2023",
      "description": "sdkjbkdsvbdjsvb",
    },
   
    {
      "date": "12/1/2023",
      "description": "sdkjbkdsvbdjsvb",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Todo List'),
        centerTitle: true, 
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: const Color.fromARGB(255, 255, 115, 0)), // Set your prefix icon here
          onPressed: () {
            // Handle prefix icon tap
          },
        ),
        actions: [
         
          IconButton(
            icon: Icon(Icons.more_vert), // Another example of a suffix icon
            onPressed: () {
              // Handle suffix icon tap
            },
          ),
        ],
      ),
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
    Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          SizedBox(width: 20),
          Text(
            'Tasks List',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),

    SizedBox(height: 20),

    // Task items with decorative colored strip or line
   Expanded(
  child: ListView.separated(
    itemCount: task.length,
    separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10),
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(color: Colors.black, width: 2.0),
          ),
        ),
        child: TaskItemBox(
          TaskItem(
            description: task[index]["description"],
            date: task[index]["date"],
            color: Colors.green,
          ),
        ),
      );
    },
  ),
),


   Spacer(),
            // "Create Task" button at the top
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateTaskPage()),
        );
      },
      child: Text('Create Task'),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 246, 85, 85),
        onPrimary: Colors.white,
        minimumSize: Size(200, 50),
      ),
    ),
  ],
)

  ]
),
    );
  }
}