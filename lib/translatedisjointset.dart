import 'package:flutter/material.dart';
import 'package:settheoryapp/quiz.dart';
import 'package:settheoryapp/disjointset.dart';
import 'theory.dart';
import 'solve.dart';
import 'translate.dart';
import 'example.dart';
import 'quiz.dart';
import 'disjointsetgame.dart';

class TranslateDisjointSetPage extends StatelessWidget {
  const TranslateDisjointSetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONJUNTO DISJUNTO"),
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
                  "¿QUÉ ES UN CONJUNTO DISJUNTO?",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "Los conjuntos disjuntos son aquellos conjuntos que no tienen elementos en común. Por ejemplo:",
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
                    _buildImageWithDescription('assets/images/dset1.png', 'Conjunto A: {1, 2, 3}'),
                    const SizedBox(width: 20),
                    _buildImageWithDescription('assets/images/dset2.png', 'Conjunto B: {4, 5, 6}'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                child: Text(
                  "Si el Conjunto A = {1, 2, 3} y el Conjunto B = {4, 5, 6}, entonces A y B son conjuntos disjuntos porque no comparten ningún elemento.",
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
                  _buildImageWithDescriptionDisjoint('assets/images/disjointset.png', 'Conjuntos Disjuntos'),
                ],
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "En un conjunto disjunto, no hay elementos comunes entre los conjuntos.",
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
                  _buildImageWithDescriptionDisjointNull('assets/images/nullset.png', 'Disjoint Sets'),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCustomButton(context, 'GAME', 'assets/images/example.png', const DisjointSetGame()),
                  _buildCustomButton(context, 'TRANSLATE', 'assets/images/translate.png', const DisjointSetPage()),
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
         // fit: BoxFit.cover,
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
         // fit: BoxFit.cover,
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