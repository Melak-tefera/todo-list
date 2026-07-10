import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
 TodoTile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.only(left: 25,right: 25, top: 25),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged
              ),
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted 
                ? TextDecoration.lineThrough 
                : TextDecoration.none
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
         color:  Colors.yellow,
         borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}