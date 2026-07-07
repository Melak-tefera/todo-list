import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Container(
              height: 300,
              width: 300,
              color: const Color.fromARGB(255, 140, 108, 118)
              
            ),
        ),
        
      ),
      );
  }
}
