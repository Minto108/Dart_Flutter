import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final myController;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key,
  required this.myController,
  required this.onSave,
  required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: myController,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Add a new task',
            ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                MyButton(text: "Save", onPressed: onSave ),
                  
                const SizedBox(width: 8,),

                MyButton(text: "Cancel", onPressed: onCancel),
              ]
            )
          ],
        ),
      ),
    );
  }
}