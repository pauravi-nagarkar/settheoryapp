import 'package:flutter/material.dart';

void main() {
  runApp(const DisjointSetGame());
}

class DisjointSetGame extends StatelessWidget {
  const DisjointSetGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disjoint Set Game',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
        colorScheme: ColorScheme.light(primary: Colors.lightGreen),
      ),
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final List<SetPair> setPairs = [
    SetPair('assets/images/ds1.png', 'assets/images/ds2.png', false), // Disjoint
    SetPair('assets/images/ds3.png', 'assets/images/ds4.png', true), // Not disjoint
    SetPair('assets/images/ds5.png', 'assets/images/ds6.png', true), // Disjoint
    SetPair('assets/images/ds7.png', 'assets/images/ds8.png', false), // Not disjoint
    SetPair('assets/images/ds9.png', 'assets/images/ds10.png', true), // Disjoint
    // Add more set pairs as needed
  ];

  int currentIndex = 0;
  String feedback = '';

  void checkAnswer(bool isDisjoint) {
    if (setPairs[currentIndex].isDisjoint == isDisjoint) {
      setState(() {
        feedback = 'Correct!';
      });
    } else {
      setState(() {
        feedback = 'Incorrect! Try Again.';
      });
    }
  }

  void _showFinalScore() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Game Over!'),
          content: const Text('You have completed all matches!'),
          actions: [
            TextButton(
              child: const Text('Play Again'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  currentIndex = 0;
                  feedback = '';
                });
              },
            ),
            TextButton(
              child: const Text('Back to Home'),
              onPressed: () {
                Navigator.of(context).pop();
                // Add logic to go back to home if applicable
              },
            ),
          ],
        );
      },
    );
  }

  void goToNextQuestion() {
    if (currentIndex < setPairs.length - 1) {
      setState(() {
        currentIndex++;
        feedback = ''; // Reset feedback for the next question
      });
    } else {
      _showFinalScore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disjoint Set Game'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Color.fromARGB(255, 166, 209, 244), // Light cyan background color
      body: Container(
        color: const Color(0xFFa6e4f4),
        child: Center(
          child: currentIndex < setPairs.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Set 1',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              _buildDraggableImage(setPairs[currentIndex].imageA),
                            ],
                          ),
                          const SizedBox(height: 20), // Space between images
                          Column(
                            children: [
                              const Text(
                                'Set 2',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              _buildDraggableImage(setPairs[currentIndex].imageB),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Are these sets disjoint?',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildAnswerButton('Yes', true, Colors.green), // Green for Yes
                        const SizedBox(width: 20),
                        _buildAnswerButton('No', false, Colors.red), // Red for No
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      feedback,
                      style: const TextStyle(fontSize: 20, color: Colors.red),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: goToNextQuestion,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // Change button color
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      child: const Text('Next'),
                    ),
                  ],
                )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  Widget _buildAnswerButton(String title, bool isDisjoint, Color buttonColor) {
    return ElevatedButton(
      onPressed: () {
        checkAnswer(isDisjoint);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor, // Use the passed button color
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        textStyle: const TextStyle(fontSize: 20),
      ),
      child: Text(title),
    );
  }

  Widget _buildDraggableImage(String imagePath) {
    return Container(
      width: 500, // Increased size for better visibility
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.5),
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: const Offset(2.0, 2.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}

class SetPair {
  final String imageA; // Image for Set A
  final String imageB; // Image for Set B
  final bool isDisjoint; // Whether the sets are disjoint or not

  SetPair(this.imageA, this.imageB, this.isDisjoint);
}
