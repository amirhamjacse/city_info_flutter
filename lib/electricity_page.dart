import 'package:flutter/material.dart';

class ElectricityPage extends StatelessWidget {
  final List<Map<String, String>> offices = [
    {
      'name': 'DESCO Office',
      'address': 'Gulshan, Dhaka',
      'contact': '+880123456789'
    },
    {
      'name': 'REB Office',
      'address': 'Mirpur, Dhaka',
      'contact': '+880987654321'
    },
    {
      'name': 'BPDB Office',
      'address': 'Motijheel, Dhaka',
      'contact': '+8801122334455'
    },
    {
      'name': 'PGCB Office',
      'address': 'Uttara, Dhaka',
      'contact': '+880667788990'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('বিদ্যুৎ অফিস'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: offices.length,
          itemBuilder: (context, index) {
            final office = offices[index];
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
                    Icons.electric_bolt,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  office['name']!,
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
                      office['address']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${office['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.green),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.green),
                  onPressed: () {
                    print('Calling ${office['contact']}');
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
