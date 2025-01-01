import 'package:flutter/material.dart';

class ContactInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Info'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.email, color: Colors.blue),
              title: Text('Email'),
              subtitle: Text('developer@example.com'),
              onTap: () {
                print('Email tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text('Phone'),
              subtitle: Text('+8801234567890'),
              onTap: () {
                print('Phone tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue),
              title: Text('Address'),
              subtitle: Text('123 Developer Lane, Dhaka'),
            ),
          ],
        ),
      ),
    );
  }
}
