// import 'package:flutter/material.dart';

// // Define the HomePage widget, which is a StatelessWidget
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('WELCOME TO SET THEORY'),
//         backgroundColor: const Color(0xFF8dd0f0), // Set the AppBar background color to a light blue
//       ),
//       body: Container(
//         color: const Color(0xFF8dd0f0), // Set the background color of the body to a light blue
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
//             children: <Widget>[
//               const SizedBox(height: 20), // Add spacing before the first button
//               _buildCustomButton(context, 'STUDY', const Color(0xFFFF4A5F)),
//               const SizedBox(height: 20), // Add spacing between buttons
//               _buildCustomButton(context, 'SOLVE', const Color(0xFFFFDF6D)),
//               const SizedBox(height: 20), // Add spacing between buttons
//               _buildCustomButton(context, 'QUIZ', const Color(0xFFB3E0FF)),
//               const SizedBox(height: 20), // Add spacing between buttons
//               _buildCustomButton(context, 'PLAY', const Color(0xFFFF8D1E)),
//               const SizedBox(height: 20), // Add spacing between buttons
//               _buildCustomButton(context, 'PROGRESS', const Color(0xFF66FF66)),
//               const SizedBox(height: 20), // Add spacing after the last button
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to create custom buttons
//   Widget _buildCustomButton(BuildContext context, String title, Color color) {
//     return Container(
//       width: 300, // Set the width of the button
//       height: 80, // Set the height of the button
//       decoration: BoxDecoration(
//         color: color, // Set the background color
//         borderRadius: BorderRadius.circular(10), // Add rounded corners
//       ),
//       child: Center(
//         child: Text(
//           title,
//           style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
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
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Home(),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Home(),
//     );
//   }
// }

// // Define the HomePage widget, which is a StatelessWidget
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: const Color(0xFF8dd0f0), // Set the background color of the body to a light blue
//         child: Column(
//           children: <Widget>[
//             Image.asset(
//               'assets/images/top.jpg', // Replace with the path to your first image
//               width: double.infinity, // Make the image take up the full width
//               height: MediaQuery.of(context).size.height / 3, // Set the height to a third of the screen height
//               fit: BoxFit.cover,
//             ),
//             const SizedBox(height: 50), // Add spacing after the image
            
//             // const Text(
//             //   "Welcome to SET Theory",
//             //   style: TextStyle(
//             //     fontSize: 42,
//             //     fontWeight: FontWeight.bold,
//             //     color: Color.fromARGB(255, 255, 215, 68),
//             //   ),
//             // ),
//             const SizedBox(height: 20), // Add spacing after the text
//             Expanded(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
//                   children: <Widget>[
//                     _buildCustomButton(context, 'STUDY', const Color(0xFFFF4A5F), const StudyPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButton(context, 'SOLVE', const Color(0xFFFFDF6D), const SolvePage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButton(context, 'QUIZ', const Color(0xFFB3E0FF), const QuizPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButton(context, 'PLAY', const Color(0xFFFF8D1E), const PlayPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButton(context, 'PROGRESS', const Color(0xFF66FF66), const ProgressPage()),
//                     const SizedBox(height: 20), // Add spacing after the last button
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create custom buttons with navigation
//   Widget _buildCustomButton(BuildContext context, String title, Color color, Widget page) {
//     return Container(
//       width: 350, // Increase the width of the button
//       height: 100, // Increase the height of the button
//       decoration: BoxDecoration(
//         color: color, // Set the background color
//         borderRadius: BorderRadius.circular(10), // Add rounded corners
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color, // Correct parameter name
//           minimumSize: const Size(350, 100), // Increase the minimum size of the button
//         ),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => page),
//           );
//         },
//         child: Text(
//           title,
//           style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Dummy pages for navigation
// class StudyPage extends StatelessWidget {
//   const StudyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Study Page")),
//       body: const Center(child: Text("This is the Study Page")),
//     );
//   }
// }

// class SolvePage extends StatelessWidget {
//   const SolvePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Solve Page")),
//       body: const Center(child: Text("This is the Solve Page")),
//     );
//   }
// }

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

// class PlayPage extends StatelessWidget {
//   const PlayPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Play Page")),
//       body: const Center(child: Text("This is the Play Page")),
//     );
//   }
// }

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

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Home(),
//     );
//   }
// }

// // Define the HomePage widget, which is a StatelessWidget
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: const Color(0xFF8dd0f0), // Set the background color of the body to a light blue
//         child: Column(
//           children: <Widget>[
//             Image.asset(
//               'assets/images/top.jpg', // Replace with the path to your first image
//               width: double.infinity, // Make the image take up the full width
//               height: MediaQuery.of(context).size.height / 3, // Set the height to a third of the screen height
//               fit: BoxFit.cover,
//             ),
//             const SizedBox(height: 50), // Add spacing after the image
//             const SizedBox(height: 20), // Add spacing after the text
//             Expanded(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
//                   children: <Widget>[
//                     _buildCustomButtonWithImage(context, 'STUDY', const Color(0xFFFF4A5F), 'assets/images/studyicon.png', const StudyPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButton(context, 'SOLVE', const Color(0xFFFFDF6D), 'assets/images/studyicon.png', const SolvePage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButton(context, 'QUIZ', const Color(0xFFB3E0FF),'assets/images/studyicon.png', const QuizPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButton(context, 'PLAY', const Color(0xFFFF8D1E), 'assets/images/studyicon.png',const PlayPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButton(context, 'PROGRESS', const Color(0xFF66FF66), 'assets/images/studyicon.png',const ProgressPage()),
//                     const SizedBox(height: 20), // Add spacing after the last button
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create custom buttons with image and navigation
//   Widget _buildCustomButtonWithImage(BuildContext context, String title, Color color, String imagePath, Widget page) {
//     return Container(
//       width: 350, // Increase the width of the button
//       height: 100, // Increase the height of the button
//       decoration: BoxDecoration(
//         color: color, // Set the background color
//         borderRadius: BorderRadius.circular(10), // Add rounded corners
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color, // Correct parameter name
//           minimumSize: const Size(350, 100), // Increase the minimum size of the button
//         ),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => page),
//           );
//         },
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               imagePath,
//               width: 90,
//               height: 90,
//             ),
//             const SizedBox(width: 10),
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create custom buttons with navigation
//   Widget _buildCustomButton(BuildContext context, String title, Color color, Widget page) {
//     return Container(
//       width: 350, // Increase the width of the button
//       height: 100, // Increase the height of the button
//       decoration: BoxDecoration(
//         color: color, // Set the background color
//         borderRadius: BorderRadius.circular(10), // Add rounded corners
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color, // Correct parameter name
//           minimumSize: const Size(350, 100), // Increase the minimum size of the button
//         ),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => page),
//           );
//         },
//         child: Text(
//           title,
//           style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Dummy pages for navigation
// class StudyPage extends StatelessWidget {
//   const StudyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Study Page")),
//       body: const Center(child: Text("This is the Study Page")),
//     );
//   }
// }

// class SolvePage extends StatelessWidget {
//   const SolvePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Solve Page")),
//       body: const Center(child: Text("This is the Solve Page")),
//     );
//   }
// }

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

// class PlayPage extends StatelessWidget {
//   const PlayPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Play Page")),
//       body: const Center(child: Text("This is the Play Page")),
//     );
//   }
// }

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
// import 'package:flutter/material.dart';
// import 'study.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Home(),
//     );
//   }
// }

// // Define the HomePage widget, which is a StatelessWidget
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: const Color(0xFF8dd0f0), // Set the background color of the body to a light blue
//         child: Column(
//           children: <Widget>[
//             Image.asset(
//               'assets/images/top.jpg', // Replace with the path to your first image
//               width: double.infinity, // Make the image take up the full width
//               height: MediaQuery.of(context).size.height / 3, // Set the height to a third of the screen height
//               fit: BoxFit.cover,
//             ),
//             const SizedBox(height: 50), // Add spacing after the image
//             const SizedBox(height: 20), // Add spacing after the text
//             Expanded(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
//                   children: <Widget>[
//                     _buildCustomButtonWithImage(context, 'STUDY', const Color(0xFFFF4A5F), 'assets/images/studyicon.png', const StudyPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButtonWithImage(context, 'SOLVE', const Color(0xFFFFDF6D), 'assets/images/solveicon.png', const SolvePage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButtonWithImage(context, 'QUIZ', const Color(0xFFB3E0FF), 'assets/images/quizicon.png', const QuizPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButtonWithImage(context, 'PLAY', const Color(0xFFFF8D1E), 'assets/images/play.png', const PlayPage()),
//                     const SizedBox(height: 20), // Add spacing between buttons
//                     _buildCustomButtonWithImage(context, 'PROGRESS', const Color(0xFF66FF66), 'assets/images/progress.png', const ProgressPage()),
//                     const SizedBox(height: 20), // Add spacing after the last button
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create custom buttons with image and navigation
//   Widget _buildCustomButtonWithImage(BuildContext context, String title, Color color, String imagePath, Widget page) {
//     return Container(
//       width: 350, // Increase the width of the button
//       height: 100, // Increase the height of the button
//       decoration: BoxDecoration(
//         color: color, // Set the background color
//         borderRadius: BorderRadius.circular(10), // Add rounded corners
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color, // Correct parameter name
//           minimumSize: const Size(350, 100), // Increase the minimum size of the button
//         ),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => page),
//           );
//         },
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               imagePath,
//               width: 100, // Adjust the width as needed
//               height: 100, // Adjust the height as needed
//             ),
//             const SizedBox(width: 10),
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 34,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create custom buttons with navigation
//   Widget _buildCustomButton(BuildContext context, String title, Color color, Widget page) {
//     return Container(
//       width: 550, // Increase the width of the button
//       height: 200, // Increase the height of the button
//       decoration: BoxDecoration(
//         color: color, // Set the background color
//         borderRadius: BorderRadius.circular(10), // Add rounded corners
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color, // Correct parameter name
//           minimumSize: const Size(350, 100), // Increase the minimum size of the button
//         ),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => page),
//           );
//         },
//         child: Text(
//           title,
//           style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Dummy pages for navigation
// class StudyPage extends StatelessWidget {
//   const StudyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Study Page")),
//       body: const Center(child: Text("This is the Study Page")),
//     );
//   }
// }

// class SolvePage extends StatelessWidget {
//   const SolvePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Solve Page")),
//       body: const Center(child: Text("This is the Solve Page")),
//     );
//   }
// }

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

// class PlayPage extends StatelessWidget {
//   const PlayPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Play Page")),
//       body: const Center(child: Text("This is the Play Page")),
//     );
//   }
// }

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
import 'study.dart';
import 'solve.dart';
import 'quiz.dart';
import 'play.dart';
import 'progress.dart';

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
      home: const Home(),
    );
  }
}

// Define the HomePage widget, which is a StatelessWidget
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF8dd0f0), // Set the background color of the body to a light blue
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/top.jpg', // Replace with the path to your first image
              width: double.infinity, // Make the image take up the full width
              height: MediaQuery.of(context).size.height / 3, // Set the height to a third of the screen height
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 50), // Add spacing after the image
            const SizedBox(height: 20), // Add spacing after the text
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
                  children: <Widget>[
                    _buildCustomButtonWithImage(context, 'STUDY', const Color(0xFFFF4A5F), 'assets/images/studyicon.png', const StudyPage()),
                    const SizedBox(height: 20), // Add spacing between buttons
                    _buildCustomButtonWithImage(context, 'SOLVE', const Color(0xFFFFDF6D), 'assets/images/solveicon.png', const StudyPage()),
                    const SizedBox(height: 20), // Add spacing between buttons
                    _buildCustomButtonWithImage(context, 'QUIZ', const Color(0xFFB3E0FF), 'assets/images/quizicon.png', const QuizPage()),
                    const SizedBox(height: 20), // Add spacing between buttons
                    _buildCustomButtonWithImage(context, 'PLAY', const Color(0xFFFF8D1E), 'assets/images/play.png', const PlayPage()),
                    const SizedBox(height: 20), // Add spacing between buttons
                    _buildCustomButtonWithImage(context, 'PROGRESS', const Color(0xFF66FF66), 'assets/images/progress.png', const ProgressPage()),
                    const SizedBox(height: 20), // Add spacing after the last button
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create custom buttons with image and navigation
  Widget _buildCustomButtonWithImage(BuildContext context, String title, Color color, String imagePath, Widget page) {
    return Container(
      width: 650, // Increase the width of the button
      height: 100, // Increase the height of the button
      decoration: BoxDecoration(
        color: color, // Set the background color
        borderRadius: BorderRadius.circular(10), // Add rounded corners
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Correct parameter name
          minimumSize: const Size(350, 100), // Increase the minimum size of the button
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
              width: 100, // Adjust the width as needed
              height: 100, // Adjust the height as needed
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





