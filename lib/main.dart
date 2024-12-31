import 'package:flutter/material.dart';

void main() {
  runApp(InformationCity());
}

class InformationCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Information City App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    ContactPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'হোম',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'যোগাযোগ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'নোটিফিকেশন',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'প্রোফাইল',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {'title': 'ডাক্তার', 'icon': Icons.local_hospital, 'page': DoctorPage()},
    {'title': 'হাসপাতাল', 'icon': Icons.medical_services, 'page': HospitalPage()},
    {'title': 'শপিং', 'icon': Icons.shopping_bag, 'page': ShoppingPage()},
    {'title': 'ফায়ার সার্ভিস', 'icon': Icons.fire_truck, 'page': FireServicePage()},
    {'title': 'কুরিয়ার সার্ভিস', 'icon': Icons.local_shipping, 'page': CourierPage()},
    {'title': 'থানা-পুলিশ', 'icon': Icons.security, 'page': PolicePage()},
    {'title': 'ওয়েবসাইট', 'icon': Icons.web, 'page': WebsitePage()},
    {'title': 'বিদ্যুৎ অফিস', 'icon': Icons.electric_bolt, 'page': ElectricityPage()},
    {'title': 'ডায়াগনস্টিক', 'icon': Icons.science, 'page': DiagnosticPage()},
    {'title': 'রক্ত', 'icon': Icons.bloodtype, 'page': BloodPage()},
    {'title': 'হোটেল', 'icon': Icons.hotel, 'page': HotelPage()},
    {'title': 'গাড়ি ভাড়া', 'icon': Icons.car_rental, 'page': CarRentPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Information App'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Single Image instead of Carousel
          Image.asset(
            'assets/images/images.jpeg', // Make sure this image exists in the assets folder
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),

          // Grid Features
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of cards per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: features.length,
                itemBuilder: (context, index) {
                  final feature = features[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => feature['page']),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(feature['icon'], size: 40, color: Colors.green),
                          SizedBox(height: 8),
                          Text(
                            feature['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Define other pages
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('যোগাযোগ')),
      body: Center(child: Text('Contact Page')),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('নোটিফিকেশন')),
      body: Center(child: Text('Notification Page')),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('প্রোফাইল')),
      body: Center(child: Text('Profile Page')),
    );
  }
}

class DoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ডাক্তার')),
      body: Center(child: Text('Doctor Page')),
    );
  }
}

class HospitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('হাসপাতাল')),
      body: Center(child: Text('Hospital Page')),
    );
  }
}

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('শপিং')),
      body: Center(child: Text('Shopping Page')),
    );
  }
}

class FireServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ফায়ার সার্ভিস')),
      body: Center(child: Text('Fire Service Page')),
    );
  }
}

class CourierPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('কুরিয়ার সার্ভিস')),
      body: Center(child: Text('Courier Page')),
    );
  }
}

class PolicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('থানা-পুলিশ')),
      body: Center(child: Text('Police Page')),
    );
  }
}

class WebsitePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ওয়েবসাইট')),
      body: Center(child: Text('Website Page')),
    );
  }
}

class ElectricityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('বিদ্যুৎ অফিস')),
      body: Center(child: Text('Electricity Page')),
    );
  }
}

class DiagnosticPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ডায়াগনস্টিক')),
      body: Center(child: Text('Diagnostic Page')),
    );
  }
}

class BloodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('রক্ত')),
      body: Center(child: Text('Blood Page')),
    );
  }
}

class HotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('হোটেল')),
      body: Center(child: Text('Hotel Page')),
    );
  }
}

class CarRentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('গাড়ি ভাড়া')),
      body: Center(child: Text('Car Rent Page')),
    );
  }
}
