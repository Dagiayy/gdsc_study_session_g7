import 'package:figma/taskdescriptionpage.dart';
import 'package:flutter/material.dart';
import 'package:figma/main.dart';
import 'package:flutter/material.dart';

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.orange),
                  onPressed: () {
                    // Handle back button press
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.orange),
                  onPressed: () {
                    // Handle options button press
                    // You can show a menu or perform other actions
                  },
                ),
              ],
            ),
            // Title "Create New Task" in bold
            Text(
              'Create New Task',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Divider for separation
            Divider(color: Colors.orange, thickness: 2),
            SizedBox(height: 20),
            // "Main Task Name" title
            Text(
              'Main Task Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Task Name input with white rectangular box and smooth corners
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Task Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            // "Due Date" title
            Text(
              'Due Date',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Due Date input with white rectangular box, smooth corners, and calendar icon
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Select Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today, color: Colors.orange),
                  onPressed: () {
                    // Handle calendar icon press
                    // Open a date picker or any date selection mechanism
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            // "Description" title
            Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Description input with white rectangular box and smooth corners
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            // "Add Task" button at the bottom center with dark orange color
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TaskDescriptionPage()),
              );
              },
              child: Text('Add Task'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 153, 51, 0), // Dark orange color
                onPrimary: Colors.white,
                minimumSize: Size(200, 50), // Adjust the size as needed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
