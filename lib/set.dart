// import 'package:flutter/material.dart';
// import 'theory.dart';
// import 'solve.dart';
// import 'translate.dart';

// class SetPage extends StatelessWidget {
//   const SetPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("STUDY"),
//         backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Top section with the study image
//             // Container(
//             //   padding: const EdgeInsets.all(16.0),
//             //   child: Image.asset(
//             //     'assets/images/studyicon.png', // Path to the study image
//             //     fit: BoxFit.cover,
//             //     width: 200,
//             //     height: 200,
//             //   ),
//             // ),
//             // Section title
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 16.0),
//               child: Text(
//                 "WHAT IS SET?",
//                 style: TextStyle(
//                   fontSize: 82,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             // YouTube-style play button
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Container(
//                 color: Colors.grey[300],
//                 height: 200,
//                 child: Center(
//                   child: Icon(
//                     Icons.play_circle_outline,
//                     color: Colors.red,
//                     size: 100,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Add text below the video
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
//               child: Text(
//                 "A set is a collection of distinct objects, considered as an object in its own right. For example:",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 42,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Row of images with descriptions
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildImageWithDescription('assets/images/animals.jpg', 'Set of Animals'),
//                   const SizedBox(width: 20), // Spacing between images
//                   _buildImageWithDescription('assets/images/flowers.jpg', 'Set of Flowers'),
//                   const SizedBox(width: 20), // Spacing between images
//                   _buildImageWithDescription('assets/images/fruits.jpg', 'Set of Fruits'),
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
//               child: Text(
//                 "The objects in a set are called elements or members.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 42,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Row of images with descriptions
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildImageWithDescription('assets/images/apple.png', 'Apple-single element'),
//                   const SizedBox(width: 20), // Spacing between images
//                   _buildImageWithDescription('assets/images/orange.png', 'Orange-single element'),
//                   const SizedBox(width: 20), // Spacing between images
//                   _buildImageWithDescription('assets/images/strawberry.png', 'Strawberry-single element'),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Padding(
//   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
//   child: Column(
//     children: [
//       Text(
//         "We usually write sets using curly brackets {} and list the elements inside",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 30,
//           color: Colors.black,
//         ),
//       ),
//       SizedBox(height: 10), // Add spacing between the text lines
//       Text(
//         "A set of fruits: {apple,orange,strawberry}",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 30,
//           color: Colors.black,
//         ),
//       ),
//       SizedBox(height: 10), // Add spacing between the text lines
//       Text(
//         "A set of Numbers: {1,2,3}",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 30,
//           color: Colors.black,
//         ),
//       ),
//       SizedBox(height: 10), // Add spacing between the text lines
//       Text(
//         "A set of alphabets: {A,B,C,D,E,F,G}",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 30,
//           color: Colors.black,
//         ),
//       ),
//     ],
//   ),
// ),

//             const SizedBox(height: 20),
//             // Row of buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // _buildCustomButton(context, 'THEORY', 'assets/images/theory.png', const TheoryPage()),
//                 _buildCustomButton(context, 'EXAMPLE', 'assets/images/example.png', const SolvePage()), // Assuming EXAMPLE also navigates to SolvePage
//                 _buildCustomButton(context, 'TRANSLATE', 'assets/images/translate.png', const TranslatePage()),
//                 _buildCustomButtonWithImage(context, 'PRACTICE', 'assets/images/solveicon.png', const SolvePage()),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create custom buttons with navigation
//   Widget _buildCustomButton(BuildContext context, String title, String imagePath, Widget page) {
//     return Container(
//       width: 150, // Width of the button
//       height: 50, // Height of the button
//       decoration: BoxDecoration(
//         color: Colors.yellow[700], // Yellow background color
//         borderRadius: BorderRadius.circular(10), // Rounded corners
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.transparent, // Transparent background
//           shadowColor: Colors.transparent, // No shadow
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
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.red, // Red text color
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create custom buttons with image and navigation
//   Widget _buildCustomButtonWithImage(BuildContext context, String title, String imagePath, Widget page) {
//     return Container(
//       width: 300, // Width of the button
//       height: 50, // Height of the button
//       decoration: BoxDecoration(
//         color: Colors.yellow[700], // Yellow background color
//         borderRadius: BorderRadius.circular(10), // Rounded corners
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.transparent, // Transparent background
//           shadowColor: Colors.transparent, // No shadow
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
//               width: 50,
//               height: 50,
//             ),
//             const SizedBox(width: 10),
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.red, // Red text color
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create image with description
//   Widget _buildImageWithDescription(String imagePath, String description) {
//     return Column(
//       children: [
//         Image.asset(
//           imagePath,
//           width: 150,
//           height: 150,
//           fit: BoxFit.cover,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           description,
//           style: const TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:settheoryapp/quiz.dart';
import 'theory.dart';
import 'solve.dart';
import 'translate.dart';
import 'example.dart';
import 'quiz.dart';

class SetPage extends StatelessWidget {
  const SetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("STUDY"),
        backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
      ),
      // Wrap SingleChildScrollView inside a Container
      body: Container(
        color: const Color(0xFF8dd0f0), // Light yellow background color
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  "WHAT IS SET?",
                  style: TextStyle(
                    fontSize: 82,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //   child: Container(
              //     color: Colors.grey[300],
              //     height: 200,
              //     child: Center(
              //       child: Icon(
              //         Icons.play_circle_outline,
              //         color: Colors.red,
              //         size: 100,
              //       ),
              //     ),
              //   ),
              // ),
              //const SizedBox(height: 0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "A set is a collection of distinct objects, considered as an object in its own right. For example:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.black,
                  ),
                ),
              ),
              //const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageWithDescription('assets/images/animals.jpg', 'Set of Animals'),
                    const SizedBox(width: 20),
                    _buildImageWithDescription('assets/images/flowers.jpg', 'Set of Flowers'),
                    const SizedBox(width: 20),
                    _buildImageWithDescription('assets/images/fruits.jpg', 'Set of Fruits'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "The objects in a set are called elements or members.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageWithDescription('assets/images/apple.png', 'Apple-single element'),
                    const SizedBox(width: 20),
                    _buildImageWithDescription('assets/images/orange.png', 'Orange-single element'),
                    const SizedBox(width: 20),
                    _buildImageWithDescription('assets/images/strawberry.png', 'Strawberry-single element'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Column(
                  children: [
                    Text(
                      "We usually write sets using curly brackets {} and list the elements inside",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    //SizedBox(height: 10),
                    // Text(
                    //   "A set of fruits: {apple,orange,strawberry}",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 30,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    // SizedBox(height: 10),
                    // Text(
                    //   "A set of Numbers: {1,2,3}",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 30,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    // SizedBox(height: 10),
                    // Text(
                    //   "A set of alphabets: {A,B,C,D,E,F,G}",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 30,
                    //     color: Colors.black,
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCustomButton(context, 'EXAMPLE', 'assets/images/example.png', const ExamplePage()),
                  _buildCustomButton(context, 'TRANSLATE', 'assets/images/translate.png', const TranslatePage()),
                  _buildCustomButtonWithImage(context, 'PRACTICE', 'assets/images/solveicon.png', const QuizPage()),
                ],
              ),
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
          width: 150,
          height: 150,
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
}
