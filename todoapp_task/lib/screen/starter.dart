import 'package:todoapp_task/screen/homepage.dart';
import 'package:flutter/material.dart';

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 246, 82, 18), // Dark Orange
     body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      // Picture at the top
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/stick-man-painting-on-canvas.png'), // Replace with your image path
            width: 400, // Set the width as needed
            height: 400, // Set the height as needed
          ),
        ],
      ),
    ),
    SizedBox(height: 10),
    // "Get Started" button at the bottom
    ElevatedButton(
      onPressed: () {
        // Navigate to the TasksPage when the "Get Started" button is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      child: Text('Get Started'),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        onPrimary: Colors.white,
        minimumSize: Size(200, 50),
      ),
    ),
  ],
     )
);
   
  }
    

  }
   

