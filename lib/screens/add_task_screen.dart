import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addtask;

  const AddTaskScreen(this.addtask);

  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 15, left: 30, right: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                text = value;
              },
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 3),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 3),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(20),
              onPressed: () {
                addtask(text);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
