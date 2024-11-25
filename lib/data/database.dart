import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{
  List toDoList = [];

  final String key = "TODOLIST";
  final _myBox = Hive.box("todolist");

  void createInitialData(){
    toDoList = [
      ["Task 1", false],
      ["Task 2", false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get(key);
  }

  void updateData(){
    _myBox.put(key, toDoList);
  }
}