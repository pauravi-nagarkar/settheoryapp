// import 'package:flutter/material.dart';

// class ProgressPage extends StatelessWidget {
//   const ProgressPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Progress Page")),
//       body: const Center(child: Text("This is the Progress Page")),
//     );
//   }
// }


import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress"),
        backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildProgressCard('SET', Colors.red, context),
          _buildProgressCard('EMPTY SET', Colors.orange, context),
          _buildProgressCard('SUBSET', Colors.yellow, context),
          _buildProgressCard('UNIVERSAL SET', Colors.green, context),
          _buildProgressCard('DISJOINT SET', Colors.blue, context),
          _buildProgressCard('EQUAL SET', Colors.purple, context),
          _buildProgressCard('INFINITE SET', Colors.pink, context),
          _buildProgressCard('SINGLETON SET', Colors.cyan, context),
          _buildProgressCard('POWER SET', Colors.deepOrange, context),
        ],
      ),
    );
  }

  // Helper method to create progress cards
  Widget _buildProgressCard(String title, Color cardColor, BuildContext context) {
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
            LinearProgressIndicator(
              value: 0.00, // Example progress value, adjust as needed
              backgroundColor: Colors.white.withOpacity(0.5),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              "Progress: 0%", // Example progress text, adjust as needed
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white, // White text color for contrast
              ),
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
      title: 'Progress Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProgressPage(),
    );
  }
}
