import 'package:flutter/material.dart';

class CourierPage extends StatelessWidget {
  final List<Map<String, String>> couriers = [
    {
      'name': 'DHL Express',
      'address': 'Banani, Dhaka',
      'contact': '+880123456789'
    },
    {
      'name': 'FedEx',
      'address': 'Gulshan, Dhaka',
      'contact': '+880987654321'
    },
    {
      'name': 'Sundarban Courier',
      'address': 'Motijheel, Dhaka',
      'contact': '+8801122334455'
    },
    {
      'name': 'SA Paribahan',
      'address': 'Mirpur, Dhaka',
      'contact': '+880667788990'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('কুরিয়ার সার্ভিস'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: couriers.length,
          itemBuilder: (context, index) {
            final courier = couriers[index];
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
                    Icons.local_shipping,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  courier['name']!,
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
                      courier['address']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${courier['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.green),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.green),
                  onPressed: () {
                    print('Calling ${courier['contact']}');
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
