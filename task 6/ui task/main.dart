import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic'),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                ),
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) => [
                PopupMenuItem<String>(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem<String>(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                PopupMenuItem<String>(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
              ],
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            _buildListEntry('Entry A', 'Description A', 'assets/profile_image_a.jpg'),
            _buildListEntry('Entry B', 'Description B', 'assets/profile_image_b.jpg'),
            _buildListEntry('Entry C', 'Description C', 'assets/profile_image_c.jpg'),
            _buildListEntry('Entry D', 'Description C', 'assets/profile_image_c.jpg'),
            _buildListEntry('Entry E', 'Description C', 'assets/profile_image_c.jpg'),
            _buildListEntry('Entry F', 'Description C', 'assets/profile_image_c.jpg'),
            _buildListEntry('Entry G', 'Description C', 'assets/profile_image_c.jpg'),
            _buildListEntry('Entry H', 'Description C', 'assets/profile_image_c.jpg'),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Drawer Item 1'),
                onTap: () {
                  // Handle item 1 tap
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Drawer Item 2'),
                onTap: () {
                  // Handle item 2 tap
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListEntry(String title, String description, String imagePath) {
    return Container(
      height: 100,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          ),
          title: Text(title),
          subtitle: Text(description),
        ),
      ),
    );
  }
}