import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const ActionButton({super.key, 
    required this.label,
    required this.color,
    this.onPressed = _defaultCallback,
  });

  static void _defaultCallback() {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }
}