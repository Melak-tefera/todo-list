import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myController= TextEditingController();
  String greeting="";
  void greetuser(){
    setState(() {
      greeting="Hello  " + myController.text ;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyPage')),

    body:Padding(
      padding: const EdgeInsets.all(25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greeting),

            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "just write the letters"
              ),
            ),
      
            ElevatedButton(
              onPressed: (){
                  greetuser();
              }, 
              child: Text("Tap me")
              
              )
          ],
        ),
      ),
    ),
    );
  }
}