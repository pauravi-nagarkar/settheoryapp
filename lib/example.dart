import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Examples of Sets"),
        backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildExampleCard(
            context,
            "Set of Fruits",
            "{apple, banana, cherry}",
            ["apple", "banana", "cherry"],
            Colors.red,
          ),
          _buildExampleCard(
            context,
            "Set of Numbers",
            "{1, 2, 3, 4, 5}",
            ["1", "2", "3", "4", "5"],
            Colors.orange,
          ),
          _buildExampleCard(
            context,
            "Set of Colors",
            "{red, green, blue}",
            ["red", "green", "blue"],
            Colors.yellow,
          ),
          _buildExampleCard(
            context,
            "Set of Animals",
            "{cat, dog, rabbit}",
            ["cat", "dog", "rabbit"],
            Colors.green,
          ),
          _buildExampleCard(
            context,
            "Set of Days of the Week",
            "{Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday}",
            ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
            Colors.blue,
          ),
          _buildExampleCard(
            context,
            "Set of Letters",
            "{A, B, C, D, E, F, G}",
            ["A", "B", "C", "D", "E", "F", "G"],
            Colors.indigo,
          ),
          _buildExampleCard(
            context,
            "Set of Planets in the Solar System",
            "{Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune}",
            ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"],
            Colors.purple,
          ),
          _buildExampleCard(
            context,
            "Set of Shapes",
            "{circle, square, triangle, rectangle}",
            ["circle", "square", "triangle", "rectangle"],
            Colors.red,
          ),
          _buildExampleCard(
            context,
            "Set of Car Brands",
            "{Toyota, Ford, Honda, BMW}",
            ["Toyota", "Ford", "Honda", "BMW"],
            Colors.orange,
          ),
          _buildExampleCard(
            context,
            "Set of School Subjects",
            "{Math, Science, English, History}",
            ["Math", "Science", "English", "History"],
            Colors.yellow,
          ),
        ],
      ),
    );
  }

  // Helper method to create example cards
  Widget _buildExampleCard(
    BuildContext context,
    String title,
    String setNotation,
    List<String> elements,
    Color cardColor,
  ) {
    return Card(
      color: cardColor,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // White text color for contrast
              ),
            ),
            const SizedBox(height: 10),
            Text(
              setNotation,
              style: const TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.white, // White text color for contrast
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: elements.map((element) => Chip(label: Text(element))).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExamplePage(),
    );
  }
}
