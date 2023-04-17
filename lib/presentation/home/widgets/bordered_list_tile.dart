import 'package:flutter/material.dart';

/// @nodoc
class BorderedListTile extends StatelessWidget {
  /// @nodoc
  const BorderedListTile({
    required this.icon,
    required this.title,
    required this.onTap,
    super.key,
  });

  /// @nodoc
  final IconData icon;

  /// @nodoc
  final String title;

  /// @nodoc
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
