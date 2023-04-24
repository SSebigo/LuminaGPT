import 'package:flutter/material.dart';

/// @nodoc
class ActionButton extends StatelessWidget {
  /// @nodoc
  const ActionButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.blueAccent,
    super.key,
  });

  /// @nodoc
  final String text;

  /// @nodoc
  final VoidCallback? onPressed;

  /// @nodoc
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.5),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 25,
          ),
        ),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
