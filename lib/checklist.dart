import 'package:flutter/material.dart';
import 'task_list.dart';

class Checklist extends StatelessWidget {
  final int completedTaskIndex;
  final String processStatus;
  final bool isFirstComplte;

  const Checklist({
    super.key,
    required this.completedTaskIndex,
    required this.processStatus,
    required this.isFirstComplte,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        final isCompleted = index <= completedTaskIndex;
        final isCurrentTask = index == completedTaskIndex + 1;

        return ListTile(
          title: Text(
            task.name,
            style: TextStyle(
              color: isFirstComplte || isCompleted
                  ? Colors.grey
                  : isCurrentTask
                      ? const Color.fromARGB(255, 247, 247, 247)
                      : const Color.fromARGB(255, 138, 153, 177),
              decoration: isCompleted || isFirstComplte
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          leading: Checkbox(
            value: isCompleted || isFirstComplte,
            onChanged: null, // Disable manual toggling
            activeColor: const Color.fromARGB(255, 138, 153, 177),
            checkColor: Colors.white,
            side: BorderSide(
              color: isCompleted || isFirstComplte
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
