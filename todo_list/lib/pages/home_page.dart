import 'package:flutter/material.dart';
import 'package:todo_list/utils/dialog_box.dart';
import 'package:todo_list/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller=TextEditingController();
  List toDolist=[
    ["take shower", true],
    ["go to school", false],
    ["clean the house", true]
  ];

  void checkBoxChecked(bool? value, int index){
    setState(() {
      toDolist[index][1]=! toDolist[index][1];
    });
  }

  void savenewtask(){
    setState(() {
      toDolist.add([controller.text, false]);
      controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask(){
    showDialog(
      context: context, 
      builder: (context){
        return DialogBox(
          controller: controller,
          onsave: savenewtask,
          oncancel: () => Navigator.of(context).pop(),
        );
      }
      );
  }
  void deletetask(int index){
    setState(() {
      toDolist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Center(child: Text("TO DO")),
        elevation: 0,
  
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed:createNewTask),

      body: ListView.builder(
        itemCount: toDolist.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDolist[index][0],
            taskCompleted: toDolist[index][1],
            onChanged: (value) => checkBoxChecked(value, index),
            deleteFunction:(context)=>deletetask(index),
              );
        },
      ),

    );
  }
}