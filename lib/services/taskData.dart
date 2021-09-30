import 'package:flutter/foundation.dart';
class TaskData extends ChangeNotifier{
  List <String> tasks=['Buy fish','Buy milk','Buy bread'];
  void addTask(String newTask){
    tasks.add(newTask);
    notifyListeners();
  }
}