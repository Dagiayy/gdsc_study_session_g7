import 'package:todoapp_task/main.dart';
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
        title: Text('Task Detail', style: TextStyle(fontWeight: FontWeight.bold)),
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
       body: Stack(
          children: [
            Center(
              child: Column(
                children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 300,
      height: 300,
      child: Image.asset(
        'assets/images/shopping-list 1.jpg', // Replace with the correct asset path
        fit: BoxFit.cover, // Adjust the fit as needed
      ),
    ),

  ],
),

     Column(
  children: [
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 0,0,0 ),
      child: Row(
        children: [
          Text('Title'),
        ],
      ),
    ),
   SizedBox(height: 5),
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 0,0,0 ),
      child: Row(
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(16),
            child: Text(
              'UI/UX Design',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
      ),
    ),
  ],
),


Column(
  children: [
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 0,0,0 ),
      child: Row(
        children: [
          Text('Desccription'),
        ],
      ),
    ),
   SizedBox(height: 5),
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 0,0,0 ),
      child: Row(
        children: [
          Container(
            width: 400,
            height:100,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(16),
            child: Text(
              'First I have to animate the loop and prototyping my design. its very important.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
      ),
    ),
  ],
),
      Column(
  children: [
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 0,0,0 ),
      child: Row(
        children: [
          Text('Deadline'),
        ],
      ),
    ),
   SizedBox(height: 5),
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 0,0,0 ),
      child: Row(
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(16),
            child: Text(
              'April 29, 2023',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
      ),
    ),
  ],
),


          ],
        ),
            )
          ]
       ),
    );
    
      
    
  }
}
