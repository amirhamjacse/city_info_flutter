// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class WebsitePages extends StatefulWidget {
//   @override
//   _WebsitePagesState createState() => _WebsitePagesState();
// }
//
// class _WebsitePagesState extends State<WebsitePages> {
//   String todoTitle = "Loading...";
//
//   @override
//   void initState() {
//     super.initState();
//     fetchTodoData();
//   }
//
//   // Fetch the data from JSONPlaceholder
//   Future<void> fetchTodoData() async {
//     const url = 'https://jsonplaceholder.typicode.com/todos/1';
//
//     try {
//       final response = await http.get(Uri.parse(url));
//
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         setState(() {
//           todoTitle = data['title'];  // Extract the title from the response
//         });
//       } else {
//         setState(() {
//           todoTitle = "Failed to load data";
//         });
//       }
//     } catch (e) {
//       setState(() {
//         todoTitle = "Error: $e";
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Todo Data'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(
//             todoTitle,
//             style: TextStyle(fontSize: 18),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class WebsitePages extends StatelessWidget {
  final List<Map<String, String>> websites = [
    {
      'name': 'Google',
      'address': 'www.google.com',
      'contact': 'No Contact'
    },
    {
      'name': 'Facebook',
      'address': 'www.facebook.com',
      'contact': 'No Contact'
    },
    {
      'name': 'Amazon',
      'address': 'www.amazon.com',
      'contact': 'No Contact'
    },
    {
      'name': 'Wikipedia',
      'address': 'www.wikipedia.org',
      'contact': 'No Contact'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ওয়েবসাইট'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: websites.length,
          itemBuilder: (context, index) {
            final website = websites[index];
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
                    Icons.web,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  website['name']!,
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
                      website['address']!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Contact: ${website['contact']}',
                      style: TextStyle(fontSize: 14.0, color: Colors.green),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
