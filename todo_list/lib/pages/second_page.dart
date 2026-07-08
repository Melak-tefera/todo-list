import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
        title: Center(child: Text("second page")),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}