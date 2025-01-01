import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://hamja.netlify.app/assets/img/general/profile.png'), // Replace with the developer's image URL
            ),
            SizedBox(height: 16),
            Text(
              'Md Amir Hamja',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email, color: Colors.purple),
              title: Text('Email'),
              subtitle: Text('contact.amirhamja@gmail.com'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.purple),
              title: Text('Phone'),
              subtitle: Text('+880765223737'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.web, color: Colors.purple),
              title: Text('Website'),
              subtitle: Text('https://hamja.netlify.app/'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.web, color: Colors.purple),
              title: Text('Facebook'),
              subtitle: Text('https://facebook.com/amirhamjaswe'),
            ),
          ],
        ),
      ),
    );
  }
}
