import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alerts'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with your actual notification count
        itemBuilder: (context, index) {
          return _buildNotificationItem(context, index);
        },
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, int index) {
    return ListTile(
      leading: Icon(Icons.notifications), // Bell icon
      title: Text(
        'Notification Title $index',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Notification Content $index'),
      onTap: () {
        // Handle tap on notification item
        // You can navigate to a detailed view or perform other actions here
      },
    );
  }
}