
// import 'package:flutter/material.dart';

// class StudyPage extends StatelessWidget {
//   const StudyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("STUDY"),
//         backgroundColor: const Color(0xFF8dd0f0), // Set the AppBar background color to a light blue
//       ),
//       body: Container(
//         color: Colors.white, // Set the background color of the body to white
//         child: Column(
//           children: <Widget>[
//             // Container to hold the study image at the top
//             Container(
//               padding: const EdgeInsets.all(12.0),
//               child: Image.asset(
//                 'assets/images/studyicon.png', // Replace with the path to your study image
//                 fit: BoxFit.cover,
//                 width: 200,
//                 height: 200,
//               ),
//             ),
//             // Expanded widget to hold the grid of study buttons
//             Expanded(
//               child: GridView.builder(
//                 padding: const EdgeInsets.all(12.0), // Padding around the grid
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3, // Number of buttons in a row
//                   crossAxisSpacing: 12.0, // Spacing between columns
//                   mainAxisSpacing: 12.0, // Spacing between rows
//                 ),
//                 itemCount: 9,
//                 itemBuilder: (context, index) {
//                   final buttons = [
//                     _buildStudyButton('SET', Colors.red),
//                     _buildStudyButton('EMPTY SET', Colors.orange),
//                     _buildStudyButton('SUBSET', Colors.yellow),
//                     _buildStudyButton('UNIVERSAL SET', Colors.green),
//                     _buildStudyButton('DISJOINT SET', Colors.blue),
//                     _buildStudyButton('EQUAL SET', Colors.purple),
//                     _buildStudyButton('INFINITE SET', Colors.pink),
//                     _buildStudyButton('SINGLETON SET', Colors.cyan),
//                     _buildStudyButton('POWER SET', Colors.deepOrange),
//                   ];
//                   return Center(
//                     child: IntrinsicHeight(
//                       child: IntrinsicWidth(
//                         child: buttons[index],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             // Container to hold the teacher image at the bottom right
//             Container(
//               alignment: Alignment.bottomRight,
//               padding: const EdgeInsets.all(12.0),
//               child: Image.asset(
//                 'assets/images/teacher.png', // Replace with the path to your teacher image
//                 width: 20,
//                 height: 30,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create a custom button for each study topic
//   Widget _buildStudyButton(String text, Color color) {
//     return Container(
//       width: 200, // Set the width of the button
//       height: 200, // Set the height of the button
//       decoration: BoxDecoration(
//         color: color, // Set the background color of the button
//         borderRadius: BorderRadius.circular(8.0), // Add rounded corners
//       ),
//       child: Center(
//         child: Text(
//           text,
//           style: const TextStyle(
//             fontSize: 14.0, // Set the font size of the button text
//             fontWeight: FontWeight.bold,
//             color: Colors.black, // Set the text color
//           ),
//           textAlign: TextAlign.center, // Center the text within the button
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:settheoryapp/universalset.dart';
import 'set.dart';  // Import the SetPage widget
import 'empty.dart';
import 'subset.dart';
import 'universalset.dart';
import 'disjointset.dart';

class StudyPage extends StatelessWidget {
  const StudyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("STUDY"),
        backgroundColor: const Color(0xFF8dd0f0), // Set the AppBar background color to a light blue
      ),
      body: Container(
        color: Colors.white, // Set the background color of the body to white
        child: Column(
          children: <Widget>[
            // Container to hold the study image at the top
            Container(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/images/studyicon.png', // Replace with the path to your study image
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
            // Expanded widget to hold the grid of study buttons
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(12.0), // Padding around the grid
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of buttons in a row
                  crossAxisSpacing: 12.0, // Spacing between columns
                  mainAxisSpacing: 12.0, // Spacing between rows
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  final buttons = [
                    _buildStudyButton('SET', Colors.red, context),
                    _buildStudyButton('EMPTY SET', Colors.orange, context),
                    _buildStudyButton('SUBSET', Colors.yellow, context),
                    _buildStudyButton('UNIVERSAL SET', Colors.green, context),
                    _buildStudyButton('DISJOINT SET', Colors.blue, context),
                    _buildStudyButton('EQUAL SET', Colors.purple, context),
                    _buildStudyButton('INFINITE SET', Colors.pink, context),
                    _buildStudyButton('SINGLETON SET', Colors.cyan, context),
                    _buildStudyButton('POWER SET', Colors.deepOrange, context),
                  ];
                  return buttons[index];
                },
              ),
            ),
            // Container to hold the teacher image at the bottom right
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/images/teacher.png', // Replace with the path to your teacher image
                width: 20,
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create a custom button for each study topic
  Widget _buildStudyButton(String text, Color color, BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          if (text == 'SET') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SetPage()),
            );
          }
          if (text == 'EMPTY SET') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EmptyPage()),
            );
          }
          if (text == 'SUBSET') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SubsetPage()),
            );
          }
          if (text == 'UNIVERSAL SET') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UniversalSetPage()),
            );
          }
          if (text == 'DISJOINT SET') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DisjointSetPage()),
            );
          }
        },
        child: Container(
          width: 80, // Set the width of the button
          height: 80, // Set the height of the button
          decoration: BoxDecoration(
            color: color, // Set the background color of the button
            borderRadius: BorderRadius.circular(8.0), // Add rounded corners
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 24.0, // Set the font size of the button text
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set the text color
              ),
              textAlign: TextAlign.center, // Center the text within the button
            ),
          ),
        ),
      ),
    );
  }
}
