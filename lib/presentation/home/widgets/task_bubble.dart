import 'package:flutter/material.dart';
import 'package:lumina_gpt/domain/clusters/task.dart';
import 'package:lumina_gpt/presentation/home/widgets/task_bubble_field.dart';

/// @nodoc
class TaskBubble extends StatelessWidget {
  /// @nodoc
  const TaskBubble({
    this.task,
    super.key,
  });

  /// @nodoc
  final Task? task;

  @override
  Widget build(BuildContext context) {
    if (task == null) {
      return Container();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TaskBubbleField(
            icon: Icons.task_alt_rounded,
            text: task!.description.getOrCrash(),
            title: 'Task added:',
          ),
          if (task!.result != null)
            TaskBubbleField(
              icon: Icons.assignment_turned_in_outlined,
              text: task!.result?.getOrCrash() ?? '',
              title: 'Result:',
            ),
        ],
      ),
    );
  }
}
