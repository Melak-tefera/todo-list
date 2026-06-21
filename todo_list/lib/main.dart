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
        appBar: AppBar(
          title: Text('first app'),
          backgroundColor: const Color.fromARGB(255, 44, 18, 48),
        ),
        body: Center(
          child: Text('Welocom', style: TextStyle(fontSize: 24),),
        ),
      ),
      );
  }
}