import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 82, 18), // Dark Orange
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Picture at the top
          Image(
            image: AssetImage('assets/stick-man-painting-on-canvas.png'), // Replace with your image path
            width: 300,
            height: 400,
          ),
          SizedBox(height: 20),
          // Spacer to push the button to the bottom
          Spacer(),
          // "Get Started" button at the bottom
          ElevatedButton(
            onPressed: () {
              // Navigate to the TasksPage when the "Get Started" button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TasksPage()),
              );
            },
            child: Text('Get Started'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              minimumSize: Size(200, 50), // Adjust the size as needed
            ),
          ),
        ],
      ),
    );
  }
}class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Picture at the top
          Image(
            image: AssetImage('assets/stickman-with-todo-list.png'), // Replace with your image path
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
          // Task items with decorative colored strip or line
          TaskItemBox(TaskItem(description: 'Task 1', date: '2023-01-01', color: Colors.green)),
          SizedBox(height: 16),
          TaskItemBox(TaskItem(description: 'Task 2', date: '2023-02-15', color: Colors.blue)),
          SizedBox(height: 16),
          TaskItemBox(TaskItem(description: 'Task 3', date: '2023-03-10', color: Colors.orange)),
          SizedBox(height: 16),
          TaskItemBox(TaskItem(description: 'Task 4', date: '2023-04-05', color: Colors.purple)),
          SizedBox(height: 20),
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

class TaskItemBox extends StatelessWidget {
  final TaskItem taskItem;

  TaskItemBox(this.taskItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: taskItem,
      ),
    );
  }
}


class TaskItem extends StatelessWidget {
  final String description;
  final String date;
  final Color color;

  TaskItem({
    required this.description,
    required this.date,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: color, width: 2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Task description
          Text(description),
          // Date
          Text(date),
        ],
      ),
    );
  }
}
class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title "Create New Task" in bold
            Text(
              'Create New Task',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Divider for separation
            Divider(color: Colors.orange, thickness: 2),
            SizedBox(height: 20),
            // Task Name input with rectangular box
            TextField(
              decoration: InputDecoration(
                labelText: 'Task Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Due Date input with rectangular box
            TextField(
              decoration: InputDecoration(
                labelText: 'Due Date',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Description input with rectangular box
            TextField(
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
            SizedBox(height: 20),
            // "Create Task" button at the end
            ElevatedButton(
              onPressed: () {
                // Navigate to the TaskDescriptionPage when the "Create Task" button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaskDescriptionPage()),
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
      ),
    );
  }
}
class TaskDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 246, 82, 18),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display entered task name, date, and description
            Text(
              'Task Name: [Task Name]',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Due Date: [Due Date]',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Description: [Description]',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
