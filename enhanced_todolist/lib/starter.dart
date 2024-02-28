import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the next page

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 246, 82, 18),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
          Container(
          child: const Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/1.png'), // Replace with your image path
            width: 300, // Set the width as needed
            height: 300, // Set the height as needed
          ),
        ],),),
        
          SizedBox(height: 80,),

             ElevatedButton(
                onPressed: () {
                  // Navigate to page2.dart when "Get Started" button is pressed
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
                child: Text('Get Started'),
                 style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        onPrimary: Colors.white,
        minimumSize: Size(200, 50),
      ),
              ),
        ]
            ),

          );
         
  }
}
