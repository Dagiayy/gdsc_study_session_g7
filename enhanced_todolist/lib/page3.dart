import 'package:enhanced_todolist/page4.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_model.dart';
import 'task_provider.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  void _onDateChanged(String value) {
  if (!isValidDateFormat(value)) {
    print('Invalid date format. Please use a valid format.');
  }
}
final TextEditingController _dateEditingController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  
 static bool isValidDateFormat(String date) {
  try {
    List<String> parts = date.split('/');
    if (parts.length != 3) return false;

    int day = int.parse(parts[0]);
    int month = int.parse(parts[1]);
    int year = int.parse(parts[2]);

    if (day < 1 || day > 31 || month < 1 || month > 12) {
      return false;
    }

    DateTime.parse('$year-$month-$day');
    return true;
  } catch (e) {
    return false;
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Task', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color:Color.fromARGB(255, 246, 82, 18)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              // Implement your action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(height: 20),
          
            
            SizedBox(height: 20),
            const Text(
              'Main Task Name',
              style: TextStyle(color:Color.fromARGB(255, 246, 85, 85), fontWeight: FontWeight.bold),
            ),
             const SizedBox(height: 10),
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
                child:  TextFormField(
                 decoration: InputDecoration(
                    labelText: 'Enter Task Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                controller: _titleController,
              validator: (value) {
  if (value?.isEmpty ?? true) {
    return 'Task name cannot be empty';
  }
  return null;
},

              ),
              ),
              SizedBox(height: 16),

             const Text(
              'Due Date',
              style: TextStyle(color:Color.fromARGB(255, 246, 85, 85),fontSize: 18, fontWeight: FontWeight.bold),
            ),
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
  child: TextFormField(
    controller: _dateEditingController,
    decoration: InputDecoration(
      labelText: 'Select Date (DD/MM/YYYY)',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      suffixIcon: IconButton(
        icon: Icon(Icons.calendar_today, color: Color.fromARGB(255, 246, 85, 85)),
        onPressed: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: _selectedDate,
            firstDate: DateTime.now(),
            lastDate: DateTime(2101),
          );
          if (pickedDate != null) {
            setState(() {
              _selectedDate = pickedDate;
              _dateEditingController.text =
                  "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}";
            });
          }
        },
      ),
    ),
    onChanged: _onDateChanged,
    validator: (value) {
      if (value == null || !isValidDateFormat(value)) {
        return 'Invalid date format. Please use DD/MM/YYYY';
      }
      return null;
    },
  ),
),





 
    
              

              SizedBox(height: 16),
             // "Description" title
           const  Text(
              'Description',
              style: TextStyle(color:Color.fromARGB(255, 246, 85, 85),fontSize: 18, fontWeight: FontWeight.bold),
            ),
           const  SizedBox(height: 10),
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
    child: TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter description ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      controller: _descriptionController,
      maxLines: 2,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Task description cannot be empty';
        }
        return null;
      },
    ),
              ),
              
             
              SizedBox(height: 16),
             Align(
  alignment: Alignment.center,
  child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, add task to the list
                    Task newTask = Task(
                      title: _titleController.text,
                      description: _descriptionController.text,
                      deadline: _selectedDate,
                    );

                    Provider.of<TaskProvider>(context, listen: false)
                        .addTask(newTask);

                    // Navigate back to page2.dart after adding the task
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Page4(task: newTask),
                      ),
                  );
                  }
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
             )
            ],
          ),
        ),
      ),
    );
  }
}
