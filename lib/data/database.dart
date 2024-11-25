import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{
  List toDoList = [];

  final String key = "TODOLIST";
  final _myBox = Hive.box("todolist");

  void createInitialData(){
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get(key);
  }

  void updateData(){
    _myBox.put(key, toDoList);
  }
}