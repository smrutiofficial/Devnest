import 'package:flutter/material.dart';
import 'task3.dart';

class Checklist3 extends StatefulWidget {
  final int completedTaskIndex;
  final String processStatus;
  final bool isTrairdComplte;

  const Checklist3({
    super.key,
    required this.completedTaskIndex,
    required this.processStatus,
    required this.isTrairdComplte,
  });

  @override
  _Checklist3State createState() => _Checklist3State();
}

class _Checklist3State extends State<Checklist3> {
  @override
  Widget build(BuildContext context) {
    // print(widget.isTrairdComplte); // Print only once

    return ListView.builder(
      shrinkWrap: true,
      itemCount: tasks3.length,
      itemBuilder: (context, index) {
        final task = tasks3[index];
        final isCompleted = index <= widget.completedTaskIndex;
        final isCurrentTask = index == widget.completedTaskIndex + 1;
        // Check if the last task is complete
        // final isLastTaskComplete = widget.completedTaskIndex == tasks3.length - 1;

        return ListTile(
          title: Text(
            task.name,
            style: TextStyle(
              color: widget.isTrairdComplte || isCompleted
                  ? Colors.grey
                  : isCurrentTask
                      ? const Color.fromARGB(255, 247, 247, 247) 
                      : const Color.fromARGB(255, 138, 153, 177),
              decoration: isCompleted || widget.isTrairdComplte
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          leading: Checkbox(
            value: isCompleted || widget.isTrairdComplte,
            onChanged: null, // Disable manual toggling
            activeColor: const Color.fromARGB(255, 138, 153, 177),
            checkColor: Colors.white,
            side: BorderSide(
              color: isCompleted || widget.isTrairdComplte
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
