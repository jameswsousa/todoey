import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String text;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.text, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ));
  }
}
