import 'package:flutter/material.dart';
import 'package:todoy_flutter/services/tasks.dart';
class AddTasks extends StatelessWidget {
  final controller=TextEditingController();
  final Function appearTasks;
  final Tasks newTask=Tasks(text: '');
  AddTasks({required this.appearTasks});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 10),
              child: TextField(
                onChanged: (value){
                  newTask.setText(value);
                },
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
                decoration: InputDecoration(
                    hintText: 'Enter a task',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              color: Colors.lightBlueAccent,
              child: TextButton(
                onPressed: () {
                  if(newTask.text!=''){
                  appearTasks(newTask.text);}
                  Navigator.pop(context);
                },
                child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}


