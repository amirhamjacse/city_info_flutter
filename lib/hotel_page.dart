import 'package:flutter/material.dart';

class HotelPage extends StatelessWidget {
  final List<Map<String, String>> hotels = [
    {
      'name': 'Radisson Blu',
      'address': 'Airport Road, Dhaka',
      'contact': '+8801234567890'
    },
    {
      'name': 'Pan Pacific Sonargaon',
      'address': 'Kawran Bazar, Dhaka',
      'contact': '+8801122334455'
    },
    {
      'name': 'InterContinental Dhaka',
      'address': 'Shahbagh, Dhaka',
      'contact': '+8809876543210'
    },
    {
      'name': 'Le Méridien Dhaka',
      'address': 'Airport Road, Dhaka',
      'contact': '+8806677889900'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('হোটেল'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            final hotel = hotels[index];
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
                    Icons.hotel,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  hotel['name']!,
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
                      hotel['address']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${hotel['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.green),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.green),
                  onPressed: () {
                    print('Calling ${hotel['contact']}');
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
