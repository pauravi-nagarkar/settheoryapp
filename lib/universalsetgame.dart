// import 'package:flutter/material.dart';
// import 'universalset.dart';

// class UniversalSetGamePage extends StatefulWidget {
//   const UniversalSetGamePage({super.key});

//   @override
//   _UniversalSetGamePageState createState() => _UniversalSetGamePageState();
// }

// class _UniversalSetGamePageState extends State<UniversalSetGamePage> {
//   final List<String> setA = ['A', 'B', 'C', 'D'];
//   final List<String> setP = ['X', 'Y', 'Z'];
//   final List<String> universalSet = [];
//   final List<String> correctUniversalSet = ['A', 'B', 'C', 'D', 'X', 'Y', 'Z'];

//   bool isCorrect = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Universal Game"),
//         backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
//       ),
//       body: Container(
//         color: const Color(0xFF8dd0f0), // Blue background color
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Text(
//                     "Set A = {${setA.join(', ')}}",
//                     style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "Set P = {${setP.join(', ')}}",
//                     style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 16),
//                   Text(
//                     "Universal Set (A ∪ P) = {${universalSet.join(', ')}}",
//                     style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: _buildElementsColumn(setA, 'Set A'),
//                   ),
//                   Expanded(
//                     child: _buildElementsColumn(setP, 'Set P'),
//                   ),
//                   Expanded(
//                     child: _buildUniversalSetColumn(),
//                   ),
//                 ],
//               ),
//             ),
//             if (isCorrect)
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Implement the logic to go to the next question or page
//                   },
//                   child: const Text("Next"),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildElementsColumn(List<String> set, String title) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 16),
//         ...set.map((element) {
//           return Draggable<String>(
//             data: element,
//             feedback: _buildDraggableItem(element),
//             childWhenDragging: _buildDraggableItem(element, dragging: true),
//             child: _buildDraggableItem(element),
//           );
//         }).toList(),
//       ],
//     );
//   }

//   Widget _buildDraggableItem(String element, {bool dragging = false}) {
//     return Container(
//       margin: const EdgeInsets.all(8.0),
//       padding: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: dragging ? Colors.grey : Colors.blue,
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Text(
//         element,
//         style: const TextStyle(
//           fontSize: 24,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }

//   Widget _buildUniversalSetColumn() {
//     return DragTarget<String>(
//       builder: (context, candidateData, rejectedData) {
//         return Container(
//           margin: const EdgeInsets.all(8.0),
//           padding: const EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             color: Colors.yellow[100],
//             borderRadius: BorderRadius.circular(8.0),
//             border: Border.all(color: Colors.yellow[800]!, width: 2),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Universal Set",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ...universalSet.map((element) {
//                 return Container(
//                   margin: const EdgeInsets.all(4.0),
//                   padding: const EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     color: isCorrect ? Colors.green : Colors.red,
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   child: Text(
//                     element,
//                     style: const TextStyle(
//                       fontSize: 24,
//                       color: Colors.white,
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ],
//           ),
//         );
//       },
//       onAccept: (data) {
//         setState(() {
//           if (!universalSet.contains(data)) {
//             universalSet.add(data);
//           }
//           if (universalSet.length == correctUniversalSet.length &&
//               universalSet.every((element) => correctUniversalSet.contains(element))) {
//             isCorrect = true;
//           }
//         });
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'universalset.dart';

class UniversalSetGamePage extends StatefulWidget {
  const UniversalSetGamePage({super.key});

  @override
  _UniversalSetGamePageState createState() => _UniversalSetGamePageState();
}

class Example {
  final List<String> egA;
  final List<String> egB;
  final List<String> set;
  final List<String> setName;
  final List<String> setA;
  final List<String> setP;
  final List<String> correctUniversalSet;

  Example(this.egA, this.egB, this.set, this.setName, this.setA, this.setP, this.correctUniversalSet);
}

class _UniversalSetGamePageState extends State<UniversalSetGamePage> {
  final List<Example> examples = [
    Example(['A', 'B', 'C', 'D'], ['P', 'Q', 'R'], ['Universal Set'], ['A', 'B', 'C', 'D', 'P', 'Q', 'R'], ['(Intersección)', '(Subconjunto de)', '(Unión)'], ['∪', '∩', '⊆'], ['∪', '(Unión)']),
    Example(['1', '2', '3'], ['3', '4', '5'], ['1', '2', '3', '4', '5'], ['Intersection Set'], ['(Intersección)', '(Subconjunto de)', '(Unión)'], ['∪', '∩', '⊆'], ['∩', '(Intersección)']),
    Example(['P', 'Q', 'R', 'S'], ['R', 'S'], ['P', 'Q'], ['Set Difference'], ['(Menos)', '(Subconjunto de)', '(Unión)'], ['∪', '-', '⊆'], ['-', '(Menos)']),
  ];

  int currentIndex = 0;
  List<String> universalSet = [];
  bool isCorrect = false;

  @override
  Widget build(BuildContext context) {
    final currentExample = examples[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Universal Game"),
        backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
      ),
      body: Container(
        color: const Color(0xFF8dd0f0), // Blue background color
        child: Column(
          children: [
            Image.asset(
              'assets/images/B1.png', // Replace with the correct path to your image
              width: 232,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "If Set A = {${currentExample.egA.join(', ')}}",
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "if Set P = {${currentExample.egB.join(', ')}}",
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Then ${currentExample.setName.join(', ')} Z = {${currentExample.set.join(', ')}} is written as ?",
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "A ${universalSet.join(' ')} P",
                    style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.green,),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _buildElementsColumn(currentExample.setA, 'Set A'),
                  ),
                  Expanded(
                    child: _buildElementsColumn(currentExample.setP, 'Set P'),
                  ),
                  Expanded(
                    child: _buildUniversalSetColumn(currentExample.correctUniversalSet),
                  ),
                ],
              ),
            ),
            if (isCorrect)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (currentIndex < examples.length - 1) {
                        currentIndex++;
                        universalSet = [];
                        isCorrect = false;
                      } else {
                        // All examples completed, handle accordingly
                        // For example, show a dialog or reset to the first example
                        _showCompletionDialog();
                      }
                    });
                  },
                  child: const Text("Next"),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildElementsColumn(List<String> set, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        ...set.map((element) {
          return Draggable<String>(
            data: element,
            feedback: _buildDraggableItem(element),
            childWhenDragging: _buildDraggableItem(element, dragging: true),
            child: _buildDraggableItem(element),
          );
        }).toList(),
      ],
    );
  }

  Widget _buildDraggableItem(String element, {bool dragging = false}) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: dragging ? Colors.grey : Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        element,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildUniversalSetColumn(List<String> correctUniversalSet) {
    return DragTarget<String>(
      builder: (context, candidateData, rejectedData) {
        return Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.yellow[100],
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.yellow[800]!, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Universal Set",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ...universalSet.map((element) {
                return Container(
                  margin: const EdgeInsets.all(4.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: isCorrect ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    element,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        );
      },
      onAccept: (data) {
        setState(() {
          if (!universalSet.contains(data)) {
            universalSet.add(data);
          }
          if (universalSet.length == correctUniversalSet.length &&
              universalSet.every((element) => correctUniversalSet.contains(element))) {
            isCorrect = true;
          }
        });
      },
    );
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Congratulations!"),
        content: const Text("You have completed all the examples."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                currentIndex = 0;
                universalSet = [];
                isCorrect = false;
              });
            },
            child: const Text("Restart"),
          ),
        ],
      ),
    );
  }
}
