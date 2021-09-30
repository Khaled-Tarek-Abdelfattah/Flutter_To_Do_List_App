import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  final String text;
  TaskTile({required this.text});
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  void changeCheckBox(bool newState) {
    setState(() {
      isChecked = newState;
    });
  }
  bool isChecked = false;
  Widget build(BuildContext context) {
    String text=widget.text;
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:
          CheckBoxState(checkBoxStatus: isChecked, changeState: changeCheckBox),
    );
  }
}

class CheckBoxState extends StatelessWidget {
  CheckBoxState({required this.checkBoxStatus, required this.changeState});
  final bool checkBoxStatus;
  final Function changeState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      onChanged: (value) {
        changeState(value);
      },
      value: checkBoxStatus,
    );
  }
}
