import 'package:flutter/material.dart';
import 'package:todo_list/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("First page")),
        backgroundColor: Colors.yellow,
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite, size: 48,)
              )

            ListTile()
           
          ],
        ),
      ),
    );
  }
}