import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase{
  List toDolist=[];
  final mybox= Hive.box("mybox");

  void createintialdata(){
    toDolist=[
      ["make tutorial", false],
      ["drink water", false]
    ];
  }

  void loaddata(){
    toDolist=mybox.get("TODOLIST");
  }
  void updatedata(){
    mybox.put("TODOLIST", toDolist);
  }
}
