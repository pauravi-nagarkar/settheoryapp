import 'package:flutter/material.dart';

class SubsetGamePage extends StatefulWidget {
  const SubsetGamePage({super.key});

  @override
  _SubsetGamePageState createState() => _SubsetGamePageState();
}

class _SubsetGamePageState extends State<SubsetGamePage> {
  final List<int> elements = [1, 2, 3, 4];
  final List<int> subset = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subset Drag-and-Drop Game"),
        backgroundColor: const Color(0xFF8dd0f0), // Light blue background color
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "A = {${elements.join(', ')}}",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: _buildElementsColumn(),
                ),
                Expanded(
                  child: _buildSubsetColumn(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildElementsColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: elements.map((element) {
        return Draggable<int>(
          data: element,
          feedback: _buildDraggableItem(element),
          childWhenDragging: _buildDraggableItem(element, dragging: true),
          child: _buildDraggableItem(element),
        );
      }).toList(),
    );
  }

  Widget _buildDraggableItem(int element, {bool dragging = false}) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: dragging ? Colors.grey : Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        element.toString(),
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSubsetColumn() {
    return DragTarget<int>(
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
                "Subsets",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ...subset.map((element) {
                return Container(
                  margin: const EdgeInsets.all(4.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    element.toString(),
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
          if (!subset.contains(data)) {
            subset.add(data);
          }
        });
      },
    );
  }
}
