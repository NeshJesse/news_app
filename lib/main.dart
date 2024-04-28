import 'package:flutter/material.dart';
import 'article.dart';
import 'screens/account.dart';
import 'screens/alerts.dart';
import 'screens/search.dart';
import 'screens/prog.dart';

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
      routes: {
        '/home': (context) => MainPage(),
        '/search': (context) => SearchScreen(),
        '/alerts': (context) => AlertsScreen(),
        '/account': (context) => AccountScreen(),
        '/progress': (context) => ProgressScreen(),
      },
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
  void initState() {
    super.initState();
    _currentIndex = 0; // Initialize currentIndex
  }

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
              // Navigate to the Progress screen
              Navigator.pushNamed(context, '/progress');
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
            // Navigate to the selected screen based on index
            switch (newIndex) {
              case 0:
                Navigator.pushNamed(context, '/home');
                break;
              case 1:
                Navigator.pushNamed(context, '/search');
                break;
              case 2:
                Navigator.pushNamed(context, '/alerts');
                break;
              case 3:
                Navigator.pushNamed(context, '/account');
                break;
              case 4:
                Navigator.pushNamed(context, '/progress');
                break;
            }
          },
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.red,
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
          elevation: 8,
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
    );
  }
}
