import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_provider.dart';
import 'createtask_page.dart';

class Page2 extends StatelessWidget {
  Color _getColorForIndex(int index) {
  List<Color> colorSequence = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    
  ];

  // Return the color based on the index in the sequence
  return colorSequence[index % colorSequence.length];
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Todo List'),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 246, 82, 18)),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            // Implement your action
          },
        ),
      ],
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage('assets/images/2.png'),
            width: 500,
            height: 200,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Task List',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Consumer<TaskProvider>(
            builder: (context, taskProvider, child) {
              return ListView.builder(
                itemCount: taskProvider.tasks.length,
                itemBuilder: (context, index) {
                  final task = taskProvider.tasks[index];
                  return ListTile(
                    title: Container(
                      width: 400,
                      height: 80,
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
                      child: Row(
                        children: [
                          Text(
                            task.title.substring(0, 1),
                            style: const TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          SizedBox(width: 10),
                          Row(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Container(
                                width:200,
                                height: 50,
                                child: Text(
                                  task.title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(width: 100,),
                              Container(
                                width: 100,
                                height:50,
                                child: Text(task.deadline.toString())),
                              Container(
                                height: 1,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          SizedBox(width: 5,),
                          Row(
                            children: [
                              Container(
                                width: 5,
                                height: 50.0,
                                color: _getColorForIndex(index),
                              ),
                             
                            ],
                            
                          ),
                          
                        ],
                      ),
                       
                    ),
                  );

                },
              );

            },
          ),
          
        ),
         Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Page3()),
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
            ),
          ),
      ]
      
            ),
          
        );
     
}
}