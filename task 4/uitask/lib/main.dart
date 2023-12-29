import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Widget bulletCategory(String imagePath, String title) {
  return Card(
    shadowColor: Colors.black38,
    child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(172, 173, 173, 173),
            borderRadius: BorderRadius.circular(16.0)),
        width: 120,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
            imagePath,
            width: 24, // Adjust the width of the image as needed
            height: 24, // Adjust the height of the image as needed
            color: Colors.black, // Optional: Set the color of the image
          ),
            Text(title),
          ],
        )),
  );
}

Widget bookAdv(String imagepath, String name, String rating) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            width: 150,
            height: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(imagepath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 15, 0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_rounded,
                  size: 20,
                  color: Colors.white,
                ),
                Text(
                  rating,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      Text(name)
    ],
  );
}

Widget bookAdvWithoutRating(String imagepath, String name) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: 150,
        height: 225,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: AssetImage(imagepath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Text(name)
    ],
  );
}

int currentIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GDSC Bookstore",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Looking for...',
                        ),
                      ),
                    ),
                    Container(
                      width: 57,
                      height: 57,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.tune,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 0, 103, 188),
                        Color.fromARGB(255, 67, 170, 255),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16.0)),
                width: MediaQuery.of(context).size.width * 0.85,
                height: 215,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "December 26, 2023",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Today a reader,",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Tomorrow a leader",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.bookmark,
                                size: 40,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.share,
                                size: 40,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Categories", style: TextStyle(fontSize: 25))],
              ),
            ),
            Wrap(
              children: [
                bulletCategory('assets/icon/healthcare.png', "Health"),
                bulletCategory('assets/icon/microscope.png', "Science"),
                bulletCategory('assets/icon/cpu.png', "Technology"),
                bulletCategory('assets/icon/history-book.png', "history"),
                bulletCategory('assets/icon/life (1).png', "philosophy"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommendations", style: TextStyle(fontSize: 25)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    bookAdv('assets/image/2.jpg', "Le Papillon", "5.0"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv(
                        'assets/image/9.jpg', "Yebedel Menged", "4.0"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv('assets/image/1.jpg', "Mahlet", "3.5"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv('assets/image/1.jpg', "Rich Dad Poor Dad",
                        "3.5"),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                )),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New", style: TextStyle(fontSize: 25)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    bookAdvWithoutRating(
                        'assets/image/7.jpg', "Rich Dad Poor Dad"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdvWithoutRating('assets/image/8.jpg', "Piyasa"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdvWithoutRating(
                        'assets/image/5.jpg', "Born a Crime"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdvWithoutRating(
                        'assets/image/5.jpg', "Le Paplion"),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                )),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending", style: TextStyle(fontSize: 25)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    bookAdv('assets/image/6.jpg',
                        "Yetekolefe Menged", "5.0"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv(
                        'assets/image/4.jpg', "Born a Crime", "4.0"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv('assets/image/3.jpg', "Lela Sew", "4.5"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv('assets/image/4.jpg', "Le Paplion", "3.5"),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                )),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
      
    bottomNavigationBar: BottomNavigationBar(
  currentIndex: currentIndex,
  onTap: (int currentIndex) {},
  items: [
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icon/web-content.png',
        width: 24, // Set width as needed
        height: 24, // Set height as needed
        color: Colors.black, // Optional: Set color
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icon/open-book.png',
        width: 24,
        height: 24,
        color: Colors.black,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icon/home.png',
        width: 24,
        height: 24,
        color: Colors.black,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icon/book.png',
        width: 24,
        height: 24,
        color: Colors.black,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icon/user (2) 1.png',
        width: 24,
        height: 24,
        color: Colors.black,
      ),
      label: '',
    ),
  ],
),
      );
      
  
    
  }
}
