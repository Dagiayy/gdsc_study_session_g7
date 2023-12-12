import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Pencil-drawn person painting (you can replace this with your image)
            Image.asset(
              'figma/lib/assets/images/stick-man-painting-on-canvas.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            // Spacer to push the button to the bottom
            Spacer(),
            // "Get Started" button
            ElevatedButton(
              onPressed: () {
                // Navigate to the to-do lists page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToDoListsPage()),
                );
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToDoListsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          5,
          (index) => ToDoListItem(),
        ),
      ),
      // ElevatedButton for creating a new task
      ElevatedButton(
        onPressed: () {
          // Navigate to the create task page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateTaskPage()),
          );
        },
        child: Text('Create Task'),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 246, 82, 18),
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}

class ToDoListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sample To-Do', style: TextStyle(fontSize: 18.0)),
          SizedBox(height: 8.0),
          Text('Date: 2023-12-12', style: TextStyle(fontSize: 14.0)),
          // Add more details or customization as needed
        ],
      ),
    );
  }
}

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No AppBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // UI for creating a new task
            TextField(
              decoration: InputDecoration(labelText: 'Task Title'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your code to handle task creation
                print('Task Created');
              },
              child: Text('Create Task'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 246, 82, 18),
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
