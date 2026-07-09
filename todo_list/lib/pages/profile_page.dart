import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            "Profile page",
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