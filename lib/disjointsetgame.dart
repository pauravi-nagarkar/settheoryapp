import 'package:flutter/material.dart';

class DisjointSetGame extends StatefulWidget {
  const DisjointSetGame({super.key});

  @override
  _DisjointSetGameState createState() => _DisjointSetGameState();
}

class Example {
  final List<String> setA;
  final List<String> setB;
  final List<String> commonElements;

  Example(this.setA, this.setB, this.commonElements);
}

class _DisjointSetGameState extends State<DisjointSetGame> {
  final List<Example> examples = [
    Example(['1', '2', '3'], ['4', '5', '6'], []),
    Example(['A', 'B', 'C'], ['B', 'D', 'E'], ['B']), // common element
    Example(['X', 'Y'], ['Z', 'X'], ['X']), // common element
  ];

  int currentIndex = 0;
  List<String> setA = [];
  List<String> setB = [];
  List<String> commonElements = [];
  List<String> disjointSetA = [];
  List<String> disjointSetB = [];

  @override
  void initState() {
    super.initState();
    _loadCurrentExample();
  }

  void _loadCurrentExample() {
    final currentExample = examples[currentIndex];
    setA = List.from(currentExample.setA);
    setB = List.from(currentExample.setB);
    commonElements = List.from(currentExample.commonElements);
    disjointSetA = List.from(setA);
    disjointSetB = List.from(setB);
  }

  void removeCommonElement(String element) {
    setState(() {
      disjointSetA.remove(element);
      disjointSetB.remove(element);
      commonElements.remove(element);
    });
  }

  bool checkDisjoint() {
    return commonElements.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disjoint Set Game"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Set A: {${disjointSetA.join(', ')}}",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            "Set B: {${disjointSetB.join(', ')}}",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            "Common Elements: {${commonElements.join(', ')}}",
            style: const TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: _buildElementsColumn(disjointSetA, 'Set A'),
                ),
                Expanded(
                  child: _buildElementsColumn(disjointSetB, 'Set B'),
                ),
              ],
            ),
          ),
          if (checkDisjoint())
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (currentIndex < examples.length - 1) {
                      currentIndex++;
                      _loadCurrentExample();
                    } else {
                      _showCompletionDialog();
                    }
                  });
                },
                child: const Text("Next"),
              ),
            ),
        ],
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
        const SizedBox(height: 20),
        const Text(
          "Drag common elements to the trash bin",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        DragTarget<String>(
          onAccept: (data) {
            removeCommonElement(data);
          },
          builder: (context, candidateData, rejectedData) {
            return Container(
              height: 80,
              width: 80,
              color: Colors.redAccent,
              child: const Icon(
                Icons.delete,
                size: 40,
                color: Colors.white,
              ),
            );
          },
        ),
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
                _loadCurrentExample();
              });
            },
            child: const Text("Restart"),
          ),
        ],
      ),
    );
  }
}
