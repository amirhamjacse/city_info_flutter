import 'package:flutter/material.dart';

class FireServicePage extends StatelessWidget {
  final List<Map<String, String>> fireStations = [
    {
      'name': 'Fire Station 1',
      'address': 'Dhanmondi, Dhaka',
      'contact': '+880123456789'
    },
    {
      'name': 'Fire Station 2',
      'address': 'Gulshan, Dhaka',
      'contact': '+880987654321'
    },
    {
      'name': 'Fire Station 3',
      'address': 'Mirpur, Dhaka',
      'contact': '+8801122334455'
    },
    {
      'name': 'Fire Station 4',
      'address': 'Uttara, Dhaka',
      'contact': '+880667788990'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ফায়ার সার্ভিস'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: fireStations.length,
          itemBuilder: (context, index) {
            final station = fireStations[index];
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
                    Icons.fire_truck,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  station['name']!,
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
                      station['address']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${station['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.green),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.green),
                  onPressed: () {
                    print('Calling ${station['contact']}');
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
