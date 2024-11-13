import 'package:flutter/material.dart';
import 'package:settheoryapp/quiz.dart';
import 'theory.dart';
import 'solve.dart';
import 'translate.dart';
import 'example.dart';
import 'quiz.dart';
//import 'equalsetgame.dart';
import 'translateequal.dart';

class EqualSetPage extends StatelessWidget {
  const EqualSetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EQUAL SET"),
        backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
      ),
      body: Container(
        color: const Color(0xFF8dd0f0), // Blue background color
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  "WHAT IS AN EQUAL SET?",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "Two sets A and B are said to be equal if they contain exactly the same elements. In other words, every element of A is also an element of B, and every element of B is also an element of A. For example:",
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
                    _buildImageWithDescription('assets/images/set1.jpg', 'Set A:{1, 2, 3, 4}'),
                    const SizedBox(width: 20),
                    _buildImageWithDescription('assets/images/set2.jpg', 'Set B:{4, 3, 2, 1}'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                child: Text(
                  "If Set A = {1, 2, 3, 4} and Set B = {4, 3, 2, 1}, then A and B are equal sets because they contain the same elements.",
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
                  _buildImageWithDescriptionEqual('assets/images/equalset.jpg', 'Equal Set Example'),
                ],
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "In equal sets, the order of elements does not matter, only the content of the sets matters.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "The symbol used for equality of sets is 'A = B'.",
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
                  _buildImageWithDescriptionEqual('assets/images/equallogo.jpg', 'Equal Set Symbol'),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                //  _buildCustomButton(context, 'GAME', 'assets/images/example.png', const EqualSetGamePage()),
                //  _buildCustomButton(context, 'TRANSLATE', 'assets/images/translate.png', const TranslateEqualPage()),
                  _buildCustomButtonWithImage(context, 'PRACTICE', 'assets/images/solveicon.png', const QuizPage()),
                ],
              ),
              const SizedBox(height: 0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomButton(BuildContext context, String title, String imagePath, Widget page) {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomButtonWithImage(BuildContext context, String title, String imagePath, Widget page) {
    return Container(
      width: 300,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithDescription(String imagePath, String description) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 249,
          height: 92,
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

  Widget _buildImageWithDescriptionEqual(String imagePath, String description) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 250,
          height: 182,
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
