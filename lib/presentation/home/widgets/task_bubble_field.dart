import 'package:flutter/material.dart';

/// @nodoc
class TaskBubbleField extends StatelessWidget {
  /// @nodoc
  const TaskBubbleField({
    required this.icon,
    required this.title,
    required this.text,
    super.key,
  });

  /// @nodoc
  final IconData icon;

  /// @nodoc
  final String title;

  /// @nodoc
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // separate the row in two parts, the left part is the icon, the right part is expanded to take 10/12th of the row
        // the right part is a column with the top part being the title and the bottom part being the text.
        // the title is a row with the icon and the title text
      ],
    );
  }
}
