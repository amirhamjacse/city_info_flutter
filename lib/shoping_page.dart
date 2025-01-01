import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  final List<Map<String, String>> hospitals = [
    {
      'name': 'Apollo Hospital',
      'address': 'Plot 15, Block D, Bashundhara R/A, Dhaka',
      'contact': '+8801712345678'
    },
    {
      'name': 'Square Hospital',
      'address': '18/F, Bir Uttam Qazi Nuruzzaman Sarak, Dhaka',
      'contact': '+8801234567890'
    },
    {
      'name': 'United Hospital',
      'address': 'Plot 15, Road 71, Gulshan-2, Dhaka',
      'contact': '+8809876543210'
    },
    {
      'name': 'Ibn Sina Hospital',
      'address': 'House 48, Road 9/A, Dhanmondi, Dhaka',
      'contact': '+8801122334455'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('হাসপাতাল'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: hospitals.length,
          itemBuilder: (context, index) {
            final hospital = hospitals[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16.0),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue[200],
                  child: Icon(
                    Icons.local_hospital,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  hospital['name']!,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      hospital['address']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${hospital['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.blue),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.blue),
                  onPressed: () {
                    // Handle call functionality (optional)
                    print('Calling ${hospital['contact']}');
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
