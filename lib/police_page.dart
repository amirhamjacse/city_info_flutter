import 'package:flutter/material.dart';

class PolicePage extends StatelessWidget {
  final List<Map<String, String>> stations = [
    {
      'name': 'Dhanmondi Police Station',
      'address': 'Dhanmondi, Dhaka',
      'contact': '+880123456789'
    },
    {
      'name': 'Gulshan Police Station',
      'address': 'Gulshan, Dhaka',
      'contact': '+880987654321'
    },
    {
      'name': 'Mirpur Police Station',
      'address': 'Mirpur, Dhaka',
      'contact': '+8801122334455'
    },
    {
      'name': 'Uttara Police Station',
      'address': 'Uttara, Dhaka',
      'contact': '+880667788990'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('থানা-পুলিশ'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: stations.length,
          itemBuilder: (context, index) {
            final station = stations[index];
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
                    Icons.security,
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
