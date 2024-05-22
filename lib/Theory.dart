import 'package:flutter/material.dart';

class TheoryPage extends StatelessWidget {
  const TheoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Theory Page")),
      body: const Center(child: Text("This is the Theory Page")),
    );
  }
}
