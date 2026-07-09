import 'package:flutter/material.dart';
import 'package:todo_list/pages/home_page.dart';
import 'package:todo_list/pages/profile_page.dart';
import 'package:todo_list/pages/setting_page.dart';
class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
void _navigatebottombar(int index){
  setState(() {
    _selectedindex=index;
  });
}

int _selectedindex = 0;

final List _pages=[
  HomePage(),

  ProfilePage(),

  SettingPage()
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("First page")),
        backgroundColor: Colors.yellow,
      ),

      body: _pages[_selectedindex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _navigatebottombar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:"Profile",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label:"Settings",
          ),
          
        ]
        ),
    );
  }
}