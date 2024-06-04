import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    this.onChanged,
  });

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
        bottom: 0,
      ),

      child: Container (
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.deepPurple,
            width: 2,
          ),
        ),
        
        child: Row(
          children: [
            Checkbox (
              value: taskCompleted,
              onChanged: onChanged,
              checkColor: Colors.white,
              side: BorderSide(color: Colors.white)
            ),
            Text(
              taskName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                decorationColor: Colors.deepPurple,
                decorationThickness: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
