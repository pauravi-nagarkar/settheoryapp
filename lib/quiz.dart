// import 'package:flutter/material.dart';

// class QuizPage extends StatelessWidget {
//   const QuizPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Quiz Page")),
//       body: const Center(child: Text("This is the Quiz Page")),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class QuizPage extends StatefulWidget {
//   const QuizPage({super.key});

//   @override
//   _QuizPageState createState() => _QuizPageState();
// }

// class _QuizPageState extends State<QuizPage> {
//   int? _selectedOption; // Variable to store the selected option
//   int _currentQuestionIndex = 0; // Variable to keep track of the current question
//   bool _answered = false; // Variable to check if the question is answered

//   // Sample list of questions and options
//   final List<Map<String, dynamic>> _questions = [
//     {
//       'question': 'Which of the following is an example of a set?',
//       'options': ['A collection of different books', 'A collection of all prime numbers less than 10', 'A collection of all red-colored objects', 'All of the above'],
//       'correctAnswer': 3
//     },
//     {
//       'question': 'Which is correct representation of a set ?',
//       'options': ['A={1,2,3,4}', 'A=(1,2,3,4)', 'A=[1,2,3,4]', 'A=<1,2,3,4'],
//       'correctAnswer': 0
//     },
//     {
//       'question': 'Which sign do we use for representing set?',
//       'options': ['{}','()','<>','[]'],
//       'correctAnswer': 0
//     },
//     {
//       'question': 'Which is correct representation of a set ',
//       'options': ['A={1,2,3,4}', 'A=(1,2,3,4)', 'A=[1,2,3,4]', 'A=<1,2,3,4'],
//       'correctAnswer': 1
//     },
//     // Add more questions as needed
//   ];

//   void _submitAnswer() {
//     if (_selectedOption != null) {
//       setState(() {
//         _answered = true;
//       });
//       Future.delayed(const Duration(seconds: 2), () {
//         setState(() {
//           _currentQuestionIndex++;
//           _selectedOption = null;
//           _answered = false;
//         });
//       });
//     } else {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return const AlertDialog(
//             title: Text("Error"),
//             content: Text("Please select an option."),
//             actions: [
//               TextButton(
//                 onPressed: null,
//                 child: Text("OK"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_currentQuestionIndex >= _questions.length) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text("Quiz"),
//           backgroundColor: const Color(0xFF8dd0f0),
//         ),
//         body: Center(
//           child: const Text(
//             "Quiz Completed!",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//         ),
//       );
//     }

//     final currentQuestion = _questions[_currentQuestionIndex];
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Quiz"),
//         backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Top section with the quiz image
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               child: Image.asset(
//                 'assets/images/quizicon.png', // Path to the quiz image
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//                 height: 100,
//               ),
//             ),
//             // Question box
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               color: Colors.grey[300],
//               child: Center(
//                 child: Text(
//                   currentQuestion['question'],
//                   style: const TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Options
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: List.generate(currentQuestion['options'].length, (index) {
//                   return Column(
//                     children: [
//                       _buildOption(index, currentQuestion['options'][index], currentQuestion['correctAnswer']),
//                       const SizedBox(height: 10),
//                     ],
//                   );
//                 }),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Submit button
//             ElevatedButton(
//               onPressed: _submitAnswer,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green, // Set the background color of the button
//                 padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30), // Rounded corners
//                 ),
//               ),
//               child: const Text(
//                 "Submit",
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to build an option
//   Widget _buildOption(int value, String text, int correctAnswer) {
//     return InkWell(
//       onTap: !_answered
//           ? () {
//               setState(() {
//                 _selectedOption = value;
//               });
//             }
//           : null,
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: _answered
//               ? (value == correctAnswer
//                   ? Colors.green
//                   : (value == _selectedOption ? Colors.red : Colors.grey[300]))
//               : (_selectedOption == value ? Colors.grey[400] : Colors.grey[300]),
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Colors.black),
//         ),
//         child: Text(
//           text,
//           style: const TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Solve App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const QuizPage(),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class QuizPage extends StatefulWidget {
//   const QuizPage({super.key});

//   @override
//   _QuizPageState createState() => _QuizPageState();
// }

// class _QuizPageState extends State<QuizPage> {
//   int? _selectedOption; // Variable to store the selected option
//   int _currentQuestionIndex = 0; // Variable to keep track of the current question
//   bool _answered = false; // Variable to check if the question is answered
//   String? _solution; // Variable to store the solution of the current question

//   // Sample list of questions, options, and solutions
//   final List<Map<String, dynamic>> _questions = [
//      {
//        'question': 'Which of the following is an example of a set?',
//        'options': ['A collection of different books', 'A collection of all prime numbers less than 10', 'A collection of all red-colored objects', 'All of the above'],
//        'correctAnswer': 3,
//        'solution': 'A set is a collection of distinct objects, considered as an object in its own right. so objects can be anything.'
//      },
//      {
//        'question': 'Which is correct example for representation of a set ?',
//        'options': ['A={1,2,3,4}', 'A=(1,2,3,4)', 'A=[1,2,3,4]', 'A=<1,2,3,4'],
//        'correctAnswer': 0,
//        'solution':'The set is represented as X={X,Y,Z}, {} anything inside bracket can be called set'
//      },
//      {
//        'question': 'Which sign do we use for representing set?',
//        'options': ['{}','()','<>','[]'],
//        'correctAnswer': 0,
//        'Solution':'The set is represented by {}, We usually write sets using curly brackets {} and list the elements inside'
//      },
//      {
//        'question': 'Which is correct representation of a set ',
//        'options': ['A={1,2,3,4}', 'A=(1,2,3,4)', 'A=[1,2,3,4]', 'A=<1,2,3,4'],
//        'correctAnswer': 0
//      },
//    ];

//   void _submitAnswer() {
//     if (_selectedOption != null) {
//       setState(() {
//         _answered = true;
//         _solution = _questions[_currentQuestionIndex]['solution'];
//       });
//       Future.delayed(const Duration(seconds: 2), () {
//         setState(() {
//           _currentQuestionIndex++;
//           _selectedOption = null;
//           _answered = false;
//           _solution = null;
//         });
//       });
//     } else {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return const AlertDialog(
//             title: Text("Error"),
//             content: Text("Please select an option."),
//             actions: [
//               TextButton(
//                 onPressed: null,
//                 child: Text("OK"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_currentQuestionIndex >= _questions.length) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text("Pracrice"),
//           backgroundColor: const Color(0xFF8dd0f0),
//         ),
//         body: Center(
//           child: const Text(
//             "Practice Completed",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//         ),
//       );
//     }

//     final currentQuestion = _questions[_currentQuestionIndex];
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Practice"),
//         backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Top section with the quiz image
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               child: Image.asset(
//                 'assets/images/quizicon.png', // Path to the quiz image
//                 fit: BoxFit.cover,
//                 width: 100,
//                 height: 150,
//               ),
//             ),
//             // Question box
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               color: Colors.grey[300],
//               child: Center(
//                 child: Text(
//                   currentQuestion['question'],
//                   style: const TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Options
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: List.generate(currentQuestion['options'].length, (index) {
//                   return Column(
//                     children: [
//                       _buildOption(index, currentQuestion['options'][index], currentQuestion['correctAnswer']),
//                       const SizedBox(height: 10),
//                     ],
//                   );
//                 }),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Submit button
//             ElevatedButton(
//               onPressed: _submitAnswer,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green, // Set the background color of the button
//                 padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30), // Rounded corners
//                 ),
//               ),
//               child: const Text(
//                 "Submit",
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Display solution if the answer is wrong
//             if (_answered && _selectedOption != currentQuestion['correctAnswer'])
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   _solution ?? '',
//                   style: const TextStyle(fontSize: 18, color: Colors.red),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
            
//           ],
//         ),
//       ),
      
//     );
//   }

//   // Helper method to build an option
//   Widget _buildOption(int value, String text, int correctAnswer) {
//     return InkWell(
//       onTap: !_answered
//           ? () {
//               setState(() {
//                 _selectedOption = value;
//               });
//             }
//           : null,
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: _answered
//               ? (value == correctAnswer
//                   ? Colors.green
//                   : (value == _selectedOption ? Colors.red : Colors.grey[300]))
//               : (_selectedOption == value ? Colors.grey[400] : Colors.grey[300]),
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Colors.black),
//         ),
//         child: Text(
//           text,
//           style: const TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Quiz App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const QuizPage(),
//     );
//   }
// }

import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int? _selectedOption; // Variable to store the selected option
  int _currentQuestionIndex = 0; // Variable to keep track of the current question
  bool _answered = false; // Variable to check if the question is answered
  String? _solution; // Variable to store the solution of the current question

  // Sample list of questions, options, and solutions
  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'Which of the following is an example of a set?',
      'options': ['A collection of different books', 'A collection of all prime numbers less than 10', 'A collection of all red-colored objects', 'All of the above'],
      'correctAnswer': 3,
      'solution': 'A set is a collection of distinct objects, considered as an object in its own right. so objects can be anything.',
      'solutionImage': 'assets/images/fruits.jpg', 
    },
    {
      'question': 'Which is correct example for representation of a set?',
      'options': ['A={1,2,3,4}', 'A=(1,2,3,4)', 'A=[1,2,3,4]', 'A=<1,2,3,4'],
      'correctAnswer': 0,
      'solution': 'The set is represented as X={X,Y,Z}, {} anything inside bracket can be called set',
      'solutionImage': 'assets/images/solution2.png',
    },
    {
      'question': 'Which sign do we use for representing set?',
      'options': ['{}', '()', '<>', '[]'],
      'correctAnswer': 0,
      'solution': 'The set is represented by {}, We usually write sets using curly brackets {} and list the elements inside',
      'solutionImage': 'assets/images/solution3.png', 
    },
    {
      'question': 'Which is correct representation of a set',
      'options': ['A={1,2,3,4}', 'A=(1,2,3,4)', 'A=[1,2,3,4]', 'A=<1,2,3,4>'],
      'correctAnswer': 0,
      'solution': 'A set is a collection of distinct objects, considered as an object in its own right. so objects can be anything.',
      'solutionImage': 'assets/images/solution2.png', 
    },
  ];

  void _submitAnswer() {
    if (_selectedOption != null) {
      setState(() {
        _answered = true;
        _solution = _questions[_currentQuestionIndex]['solution'];
      });
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _currentQuestionIndex++;
          _selectedOption = null;
          _answered = false;
          _solution = null;
        });
      });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Error"),
            content: Text("Please select an option."),
            actions: [
              TextButton(
                onPressed: null,
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_currentQuestionIndex >= _questions.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Practice"),
          backgroundColor: const Color(0xFF8dd0f0),
        ),
        body: Center(
          child: const Text(
            "Practice Completed",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    final currentQuestion = _questions[_currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice"),
        backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Top section with the quiz image
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/quizicon.png', // Path to the quiz image
                    fit: BoxFit.cover,
                    width: 100,
                    height: 150,
                  ),
                ),
                // Question box
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[300],
                  child: Center(
                    child: Text(
                      currentQuestion['question'],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Options
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: List.generate(currentQuestion['options'].length, (index) {
                      return Column(
                        children: [
                          _buildOption(index, currentQuestion['options'][index], currentQuestion['correctAnswer']),
                          const SizedBox(height: 10),
                        ],
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 20),
                // Submit button
                ElevatedButton(
                  onPressed: _submitAnswer,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Set the background color of the button
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),
                // Display solution if the answer is wrong
                if (_answered && _selectedOption != currentQuestion['correctAnswer'])
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          _solution ?? '',
                          style: const TextStyle(fontSize: 18, color: Colors.red),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        if (currentQuestion['solutionImage'] != null)
                          Image.asset(
                            currentQuestion['solutionImage'],
                            width: 200,
                            height: 200,
                          ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          // Positioned image at the bottom right
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/images/teacher.png', // Path to your bottom right image
              width: 250,
              height: 250,
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build an option
  Widget _buildOption(int value, String text, int correctAnswer) {
    return InkWell(
      onTap: !_answered
          ? () {
              setState(() {
                _selectedOption = value;
              });
            }
          : null,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: _answered
              ? (value == correctAnswer
                  ? Colors.green
                  : (value == _selectedOption ? Colors.red : Colors.grey[300]))
              : (_selectedOption == value ? Colors.grey[400] : Colors.grey[300]),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
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
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizPage(),
    );
  }
}

