// import 'package:flutter/material.dart';

// class TranslatePage extends StatelessWidget {
//   const TranslatePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Translate Page")),
//       body: const Center(child: Text("This is the Translate Page")),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'theory.dart';
import 'solve.dart';
import 'translate.dart';
import 'example.dart';
import 'set.dart';

class TranslatePage extends StatelessWidget {
   const TranslatePage({super.key});

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
                padding: EdgeInsets.symmetric(vertical: 16.0),
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
              //const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Text(
                  "Un conjunto es una colección de objetos distintos, considerados como un objeto por derecho propio. Por ejemplo:",
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
                  "Los objetos en un conjunto se llaman elementos o miembros.",
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
                      "Usualmente escribimos los conjuntos usando llaves {} y enumeramos los elementos dentro.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Un conjunto de frutas: {manzana, naranja, fresa}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Un conjunto de números: {1, 2, 3}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Un conjunto de letras: {A, B, C, D, E, F, G}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCustomButton(context, 'EXAMPLE', 'assets/images/example.png', const ExamplePage()),
                  _buildCustomButton(context, 'TRANSLATE', 'assets/images/translate.png', const SetPage()),
                  _buildCustomButtonWithImage(context, 'PRACTICE', 'assets/images/solveicon.png', const SolvePage()),
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