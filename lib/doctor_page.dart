import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  final List<Map<String, String>> doctors = [
    {
      'name': 'Dr. Mohammad Rahim',
      'specialty': 'Cardiologist',
      'contact': '+880123456789'
    },
    {
      'name': 'Dr. Salma Akter',
      'specialty': 'Pediatrician',
      'contact': '+880987654321'
    },
    {
      'name': 'Dr. Mahbub Alam',
      'specialty': 'Dermatologist',
      'contact': '+880112233445'
    },
    {
      'name': 'Dr. Nusrat Jahan',
      'specialty': 'Gynecologist',
      'contact': '+880667788990'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ডাক্তার'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: doctors.length,
          itemBuilder: (context, index) {
            final doctor = doctors[index];
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
                  backgroundColor: Colors.teal[200],
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  doctor['name']!,
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
                      doctor['specialty']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${doctor['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.teal),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.teal),
                  onPressed: () {
                    // Handle call functionality (optional)
                    print('Calling ${doctor['contact']}');
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
