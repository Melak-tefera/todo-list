import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyPage')),

    body: Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.yellow,
        child: Center(
          child: Text(
            "Setting page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
                
            ),
          ),
        ),
      ),
    )
    );
  }
}