import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Verified',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Unverified',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Example item count
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Notification $index'),
                  subtitle: Text('Description of notification $index'),
                  onTap: () {
                    // Handle notification tap
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
