import 'package:flutter/material.dart';

class BusFarePage extends StatelessWidget {
  final List<Map<String, String>> busServices = [
    {
      'name': 'Tungipara Express',
      'route': 'Banani to Tungipara',
      'fare': '150 BDT',
      'contact': '+880123456789',
    },
    {
      'name': 'Mirpur Bus',
      'route': 'Gulshan to Mirpur',
      'fare': '100 BDT',
      'contact': '+880987654321',
    },
    {
      'name': 'Sundarban Transport',
      'route': 'Motijheel to Gazipur',
      'fare': '200 BDT',
      'contact': '+8801122334455',
    },
    {
      'name': 'SA Paribahan',
      'route': 'Moghbazar to Narayanganj',
      'fare': '120 BDT',
      'contact': '+880667788990',
    },
    {
      'name': 'Green Line',
      'route': 'Dhanmondi to Narayanganj',
      'fare': '130 BDT',
      'contact': '+8805566778899',
    },
    {
      'name': 'Shyamoli Paribahan',
      'route': 'Tejgaon to Barisal',
      'fare': '250 BDT',
      'contact': '+8803344556677',
    },
    {
      'name': 'Siam Paribahan',
      'route': 'Bashundhara to Khulna',
      'fare': '280 BDT',
      'contact': '+8804455667788',
    },
    {
      'name': 'Eagle Paribahan',
      'route': 'Uttara to Sylhet',
      'fare': '350 BDT',
      'contact': '+8805566771122',
    },
    {
      'name': 'Daimond Paribahan',
      'route': 'Savar to Chattogram',
      'fare': '500 BDT',
      'contact': '+8806677885544',
    },
    {
      'name': 'Asia Paribahan',
      'route': 'Bashundhara to Rangpur',
      'fare': '450 BDT',
      'contact': '+8807788995566',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ঢাকা সিটির বাস ভাড়া'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: busServices.length,
          itemBuilder: (context, index) {
            final bus = busServices[index];
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
                    Icons.directions_bus,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  bus['name']!,
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
                      'Route: ${bus['route']}',
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Fare: ${bus['fare']}',
                      style: TextStyle(fontSize: 16.0, color: Colors.green),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${bus['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.blue),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.call, color: Colors.blue),
                  onPressed: () {
                    print('Calling ${bus['contact']}');
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
