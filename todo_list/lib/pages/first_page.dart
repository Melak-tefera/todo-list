import 'package:flutter/material.dart';
import 'package:todo_list/pages/home_page.dart';
import 'package:todo_list/pages/profile_page.dart';
import 'package:todo_list/pages/setting_page.dart';
class FirstPage extends StatefulWidget {
   const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

int currentindex = 0;
final List pages=[
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

      body:pages[currentindex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white
            ),
            label: "Home",
            ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white
            ),
            label: "Profile",
            ),

            BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white
            ),
            label: "Setting",
            )

      ]
      ),
    );
  }
}