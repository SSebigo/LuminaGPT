import 'package:flutter/material.dart';
import 'package:lumina_gpt/domain/agents/task.dart';

/// @nodoc
class TaskBubble extends StatelessWidget {
  /// @nodoc
  const TaskBubble({
    required this.task,
    super.key,
  });

  /// @nodoc
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Task added: ${task.name.getOrCrash()}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Reasoning: ${task.description.getOrCrash()}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Goal: ${task.goal.getOrCrash()}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (task.result != null)
          Text(
            'Result: ${task.result?.getOrCrash()}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
      ],
    );
  }
}
