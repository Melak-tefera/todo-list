import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list/data/Database.dart';
import 'package:todo_list/utils/dialog_box.dart';
import 'package:todo_list/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final mybox= Hive.box("mybox");
  TodoDataBase db= TodoDataBase();

  @override
  void initState() {
    if(mybox.get("TODOLIST")==null){
      db.createintialdata();
    }else{
      db.loaddata();
    }

    super.initState();
  }

  final controller=TextEditingController();
  

  void checkBoxChecked(bool? value, int index){
    setState(() {
      db.toDolist[index][1]=! db.toDolist[index][1];
    });
  }

  void savenewtask(){
    setState(() {
      db.toDolist.add([controller.text, false]);
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
      db.toDolist.removeAt(index);
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
        itemCount: db.toDolist.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: db.toDolist[index][0],
            taskCompleted: db.toDolist[index][1],
            onChanged: (value) => checkBoxChecked(value, index),
            deleteFunction:(context)=>deletetask(index),
              );
        },
      ),

    );
  }
}