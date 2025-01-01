import 'package:flutter/material.dart';

class BloodPage extends StatelessWidget {
  final List<Map<String, String>> bloodBanks = [
    {
      'name': 'Red Crescent Blood Bank',
      'address': 'Moghbazar, Dhaka',
      'contact': '+8801234567890'
    },
    {
      'name': 'Quantum Foundation',
      'address': 'Panthapath, Dhaka',
      'contact': '+8801122334455'
    },
    {
      'name': 'Sandhani Blood Bank',
      'address': 'Shahbagh, Dhaka',
      'contact': '+8809876543210'
    },
    {
      'name': 'Bangladesh Thalassemia Foundation',
      'address': 'Green Road, Dhaka',
      'contact': '+8806677889900'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('রক্ত'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: bloodBanks.length,
          itemBuilder: (context, index) {
            final bloodBank = bloodBanks[index];
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
                  backgroundColor: Colors.green[200],
                  child: Icon(
                    Icons.bloodtype,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  bloodBank['name']!,
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
                      bloodBank['address']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${bloodBank['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.green),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.green),
                  onPressed: () {
                    print('Calling ${bloodBank['contact']}');
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
