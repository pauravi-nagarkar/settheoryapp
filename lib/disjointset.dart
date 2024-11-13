import 'package:flutter/material.dart';
import 'theory.dart';
import 'solve.dart';
import 'translate.dart';
import 'example.dart';
import 'disjointsetgame.dart';
import 'translatedisjointset.dart';
import 'quiz.dart'; // Only import quiz.dart once

class DisjointSetPage extends StatelessWidget {
  const DisjointSetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DISJOINT SET"),
        backgroundColor: const Color(0xFFa6e4f4), // Light cyan background color
      ),
      body: Container(
        color: const Color(0xFFa6e4f4), // Cyan background color
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  "WHAT IS A DISJOINT SET?",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "Disjoint sets are sets that have no elements in common. For example:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageWithDescription(
                        'assets/images/dset1.png', 'Set A: {1, 2, 3}'),
                    const SizedBox(width: 20),
                    _buildImageWithDescription(
                        'assets/images/dset2.png', 'Set B: {4, 5, 6}'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                child: Text(
                  "If Set A = {1, 2, 3} and Set B = {4, 5, 6}, then A and B are disjoint sets because they do not share any elements.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildImageWithDescriptionDisjoint(
                      'assets/images/disjointset.png', 'Disjoint Sets'),
                ],
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "In a disjoint set, the intersection between the sets is an empty set (null set), denoted by ∅, because they have no elements in common.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildImageWithDescriptionDisjointNull(
                      'assets/images/nullset.png', 'Disjoint Sets'),
                ],
              ),
              const SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     _buildCustomButton(context, 'GAME', const DisjointSetGame()),
                     _buildCustomButton(context, 'TRANSLATE', const TranslateDisjointSetPage()),
                     _buildCustomButton(context, 'PRACTICE', const QuizPage()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomButton(BuildContext context, String title, Widget page) {
    return Container(
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.yellow[700],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithDescription(String imagePath, String description) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 162,
          height: 175,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildImageWithDescriptionDisjoint(String imagePath, String description) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 632,
          height: 248,
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildImageWithDescriptionDisjointNull(String imagePath, String description) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 150,
          height: 150,
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
