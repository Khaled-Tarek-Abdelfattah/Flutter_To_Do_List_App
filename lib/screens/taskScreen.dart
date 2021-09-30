import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoy_flutter/screens/addTasks.dart';
import 'package:todoy_flutter/services/listConfiguration.dart';

class TaskScreen extends StatefulWidget {
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTasks(
                      appearTasks: (newTask) {
                        setState(() {
                          tasks.add(newTask);
                        });
                      },
                    ),
                  )));
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                30.0,
                40.0,
                30.0,
                30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 40.0,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Todoey',
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('${tasks.length} Tasks',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700))
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 60.0,
                  left: 15.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return TaskTile(text: tasks[index]);
                  },
                  itemCount: tasks.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
