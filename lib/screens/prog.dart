import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text("Progress"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent[400],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Verified'),
              Tab(text: 'Unverified'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Page for Verified notifications
            VerifiedNotificationsPage(),
            // Page for Unverified notifications
            UnverifiedNotificationsPage(),
          ],
        ),
      ),
    );
  }
}

class VerifiedNotificationsPage extends StatelessWidget {
  const VerifiedNotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Verified Notification $index'),
          subtitle: Text('Description of verified notification $index'),
          onTap: () {
            // Handle notification tap
          },
        );
      },
    );
  }
}

class UnverifiedNotificationsPage extends StatelessWidget {
  const UnverifiedNotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Unverified Notification $index'),
          subtitle: Text('Description of unverified notification $index'),
          onTap: () {
            // Handle notification tap
          },
        );
      },
    );
  }
}
