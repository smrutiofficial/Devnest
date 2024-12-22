import 'package:flutter/material.dart';
import 'task2.dart';

class Checklist2 extends StatelessWidget {
  final int completedTaskIndex;
  final String processStatus;
  final bool isSecComplte;

  const Checklist2({
    super.key,
    required this.completedTaskIndex,
    required this.processStatus,
    required this.isSecComplte,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tasks2.length,
      itemBuilder: (context, index) {
        final task = tasks2[index];
        final isCompleted = index <= completedTaskIndex;
        final isCurrentTask = index == completedTaskIndex + 1;

        return ListTile(
          title: Text(
            task.name,
            style: TextStyle(
              color: isSecComplte|| isCompleted
                  ? Colors.grey
                  : isCurrentTask
                      ? const Color.fromARGB(
                          255, 247, 247, 247) 
                      : const Color.fromARGB(255, 138, 153, 177),
              decoration: isCompleted || isSecComplte
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          leading: Checkbox(
            value: isCompleted || isSecComplte,
            onChanged: null, // Disable manual toggling
            activeColor: const Color.fromARGB(255, 138, 153, 177),
            checkColor: Colors.white,
            side: BorderSide(
              color: isCompleted || isSecComplte
                  ? Colors.green
                  : const Color.fromARGB(255, 138, 153, 177),
              width: 2,
            ),
          ),
        );
      },
    );
  }
}
