import 'package:flutter/material.dart';

class DiagnosticPage extends StatelessWidget {
  final List<Map<String, String>> diagnostics = [
    {
      'name': 'Popular Diagnostic Centre',
      'address': 'House #16, Road #2, Dhanmondi, Dhaka',
      'contact': '+8801234567890'
    },
    {
      'name': 'Ibn Sina Diagnostic Centre',
      'address': 'House #48, Road #9/A, Dhanmondi, Dhaka',
      'contact': '+8801122334455'
    },
    {
      'name': 'Square Diagnostic',
      'address': '18/F, Bir Uttam Qazi Nuruzzaman Sarak, Dhaka',
      'contact': '+8809876543210'
    },
    {
      'name': 'Labaid Diagnostic Centre',
      'address': 'House #06, Road #04, Dhanmondi, Dhaka',
      'contact': '+8806677889900'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ডায়াগনস্টিক'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: diagnostics.length,
          itemBuilder: (context, index) {
            final diagnostic = diagnostics[index];
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
                    Icons.science,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  diagnostic['name']!,
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
                      diagnostic['address']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${diagnostic['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.green),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.green),
                  onPressed: () {
                    print('Calling ${diagnostic['contact']}');
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
