// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'home.dart'; // Assuming HomePage is in homepage.dart
// import 'package:lottie/lottie.dart';
// //import 'package:animated_splash_screen/animated_splash_screen.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 10),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => const Home())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF8dd0f0),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Lottie.asset(
//                 'assets/Lottie/set.json', // Replace with the path to your Lottie JSON file
//                 fit: BoxFit.cover,
//                 width: 400, // Adjust the width and height as needed
//                 height: 400,
//                 repeat: true, // Set to true if you want the animation to loop
//               ),
//             ),
//             const Center(
//               child: Text(
//                 "WELCOME TO LAND OF SET THEORY",
//                 style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blueAccent),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart'; // Assuming HomePage is in homepage.dart
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 10),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 141, 208, 240),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'assets/Lottie/set.json', // Replace with the path to your Lottie JSON file
                fit: BoxFit.cover,
                width: 600, // Adjust the width and height as needed
                height: 600,
                repeat: true, // Set to true if you want the animation to loop
              ),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),  // Add spacing between Lottie and images
            child: Image.asset(
              'assets/images/settheory2.png', // Replace with the path to your first image
              width: 900, // Adjust the width and height as needed
              height: 600,
              fit: BoxFit.fill,
            ),
            // const SizedBox(height: 20), // Add spacing between images and text
            // const Center(
            //   child: Text(
            //     "WELCOME TO LAND OF SET THEORY",
            //     style: TextStyle(
            //       fontSize: 24,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.blueAccent,
            //     ),
            //   ),
            // ),
            ),
          ],
        ),
      ),
    );

  }
}


// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'home.dart'; // Assuming HomePage is in homepage.dart
// import 'package:lottie/lottie.dart';
// import 'package:audioplayers/audioplayers.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   final AudioPlayer _audioPlayer = AudioPlayer();

//   @override
//   void initState() {
//     super.initState();
//     _playMusic();
//     Timer(
//       const Duration(seconds: 10),
//       () => Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const Home()),
//       ),
//     );
//   }

//   Future<void> _playMusic() async {
//     await _audioPlayer.play(AssetSource('audio/background.mp3'));  // Replace with your audio file path
//   }

//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 141, 208, 240),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Lottie.asset(
//                 'assets/Lottie/set.json', // Replace with the path to your Lottie JSON file
//                 fit: BoxFit.cover,
//                 width: 600, // Adjust the width and height as needed
//                 height: 600,
//                 repeat: true, // Set to true if you want the animation to loop
//               ),
//             ),
//             const SizedBox(height: 30),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),  // Add spacing between Lottie and images
//               child: Image.asset(
//                 'assets/images/settheory2.png', // Replace with the path to your first image
//                 width: 900, // Adjust the width and height as needed
//                 height: 600,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
