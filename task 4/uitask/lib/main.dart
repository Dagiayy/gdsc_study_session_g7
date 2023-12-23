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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'GDSC BOOKSTORE',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
        actions: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon/setting_5251209.png'),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Search ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Icon(
                      Icons.settings,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  'assets/images/photo_2023-12-23_05-43-08.jpg',
                  width: 400.0,
                  height: 170.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  _buildCategoryBox('Health', Icons.favorite),
                  _buildCategoryBox('Science', Icons.school),
                  _buildCategoryBox('History', Icons.history),
                  _buildCategoryBox('Philosophy', Icons.sentiment_satisfied),
                  _buildCategoryBox('Technology', Icons.devices),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Recommendation',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
          Container(
  height: 140.0,
  padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust the horizontal padding as needed
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 5,
    itemExtent: 120.0, // Adjust the item extent as needed
    itemBuilder: (context, index) {
      if (index == 0) {
        // For title 0, use a specific image
        return _buildRecommendationCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_03-57-45.jpg',
        );
      } else if (index == 1) {
        // For title 1, use a specific image
        return _buildRecommendationCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_03-57-45.jpg',
        );
      }else if (index == 2) {
        // For title 1, use a specific image
        return _buildRecommendationCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_03-57-45.jpg',
        );
      } else if (index == 3) {
        // For title 1, use a specific image
        return _buildRecommendationCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_03-57-45.jpg',
        );
      } else if (index == 4) {
        // For title 1, use a specific image
        return _buildRecommendationCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_03-57-45.jpg',
        );
      }  else {
        // For other titles, use the default pattern
        return _buildRecommendationCard(
          'Title $index',
          'Description $index',
          'assets/images/recommendation_$index.jpg',
        );
      }
    },
  ),
),


              SizedBox(height: 16.0),
              Text(
                'New',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
           Container(
  height: 140.0,
  padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust the horizontal padding as needed
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 5,
    itemExtent: 120.0, // Adjust the item extent as needed
    itemBuilder: (context, index) {
      if (index == 0) {
        // For title 0, use a specific image
        return _buildNewCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_04-26-48.jpg',
        );
      } else if (index == 1) {
        // For title 1, use a specific image
        return _buildNewCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_04-26-48.jpg',
        );
      } else if (index == 2) {
        // For title 2, use a specific image
        return _buildNewCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_04-26-48.jpg',
        );
      } else if (index == 3) {
        // For title 3, use a specific image
        return _buildNewCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_04-26-48.jpg',
        );
      } else if (index == 4) {
        // For title 4, use a specific image
        return _buildNewCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_04-26-48.jpg',
        );
      } else {
        // For other titles, use the default pattern
        return _buildNewCard(
          'Title $index',
          'Description $index',
          'assets/images/recommendation_$index.jpg',
        );
      }
    },
  ),
),


              SizedBox(height: 16.0),
              Text(
                'Trending',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
               Container(
  height: 140.0,
  padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust the horizontal padding as needed
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 5,
    itemExtent: 120.0, // Adjust the item extent as needed
    itemBuilder: (context, index) {
      if (index == 0) {
        // For title 0, use a specific image
        return _buildTrendingCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_02-29-23.jpg',
        );
      } else if (index == 1) {
        // For title 1, use a specific image
        return _buildTrendingCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_02-29-23.jpg',
        );
      } else if (index == 2) {
        // For title 2, use a specific image
        return _buildTrendingCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_02-29-23.jpg',
        );
      } else if (index == 3) {
        // For title 3, use a specific image
        return _buildTrendingCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_02-29-23.jpg',
        );
      } else if (index == 4) {
        // For title 4, use a specific image
        return _buildTrendingCard(
          'Title $index',
          'Description $index',
          'assets/images/photo_2023-12-24_02-29-23.jpg',
        );
      } else {
        // For other titles, use the default pattern
        return _buildTrendingCard(
          'Title $index',
          'Description $index',
          'assets/images/recommendation_$index.jpg',
        );
      }
    },
  ),
),
            ],
            
      ),
        )
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Drawer Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Drawer Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildCategoryBox(String title, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(height: 4.0),
            Text(title),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendationCard(String title, String description, String imagePath) {
  return Container(
    width: 120.0,
    margin: const EdgeInsets.only(right: 8.0), // Reduced right margin
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            width: 80.0,
            height: 90.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 4.0), // Reduced height
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(description),
      ],
    ),
  );
}

  Widget _buildNewCard(String title, String description, String imagePath) {
    return Container(
      width: 160.0,
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 80.0,
              height: 90.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(description),
        ],
      ),
    );
  }

  Widget _buildTrendingCard(String title, String description, String imagePath) {
    return Container(
      width: 160.0,
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 80.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(description),
        ],
      ),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  MyBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.article,color: Colors.black),
          label: 'Fancy News',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book, color: Colors.black),
          label: 'Read',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book, color: Colors.black),
          label: 'Books',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.black),
          label: 'Profile',
        ),
      ],
    );
  }
}
