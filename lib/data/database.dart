import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{
  List toDoList = [];
  final _myBox = Hive.box("mybox");

  void createInitialData(){
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData(){
    _myBox.put("TODOLIST", toDoList);
  }
}