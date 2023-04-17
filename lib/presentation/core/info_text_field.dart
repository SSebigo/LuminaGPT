import 'package:flutter/material.dart';
import 'package:lumina_gpt/utils/constants/palette.dart';

/// @nodoc
class InfoTextField extends StatelessWidget {
  /// @nodoc
  const InfoTextField({
    required this.icon,
    required this.text,
    super.key,
    this.onChanged,
  });

  /// @nodoc
  final IconData icon;

  /// @nodoc
  final String text;

  /// @nodoc
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        minLines: 1,
        maxLines: 5,
        onChanged: onChanged,
        style: const TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none,
        ),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 7.5),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
