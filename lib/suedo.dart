import 'package:flutter/material.dart';
import 'article.dart'; // Import NewsBox widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verified News',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HistMan"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        backgroundColor: Colors.greenAccent[400],
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.bar_chart_rounded),
            tooltip: 'Progress',
            onPressed: () {
              // Handle account circle button press
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            NewsBox(
              imageUrl:
                  'https://images.unsplash.com/photo-1616832880334-b1004d9808da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
              title: 'Breaking News',
              subtitle: 'Important news update',
              buttonText1: 'Read More',
              buttonText2: 'Share',
              buttonText3: 'Save',
            ),
            NewsBox(
              imageUrl:
                  'https://images.unsplash.com/photo-1616832880334-b1004d9808da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
              title: 'Latest Update',
              subtitle: 'Exciting developments',
              buttonText1: 'Read More',
              buttonText2: 'Share',
              buttonText3: 'Save',
            ),
            // Add more NewsBox widgets here as needed
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[300]!, // Border color
              width: 1.0, // Border width
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          backgroundColor: Colors.white, // Set background color to white
          selectedItemColor: Colors.black, // Color of selected item
          unselectedItemColor: Colors.red, // Color of unselected items
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active_rounded),
                label: 'Alerts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Account'),
          ],
          elevation: 8, // Set elevation
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
          // Normal style for unselected labels
        ),
      ),
    );
  }
}
