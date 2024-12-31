import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WebsitePages extends StatefulWidget {
  @override
  _WebsitePagesState createState() => _WebsitePagesState();
}

class _WebsitePagesState extends State<WebsitePages> {
  String todoTitle = "Loading...";

  @override
  void initState() {
    super.initState();
    fetchTodoData();
  }

  // Fetch the data from JSONPlaceholder
  Future<void> fetchTodoData() async {
    const url = 'https://jsonplaceholder.typicode.com/todos/1';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          todoTitle = data['title'];  // Extract the title from the response
        });
      } else {
        setState(() {
          todoTitle = "Failed to load data";
        });
      }
    } catch (e) {
      setState(() {
        todoTitle = "Error: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Data'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            todoTitle,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
